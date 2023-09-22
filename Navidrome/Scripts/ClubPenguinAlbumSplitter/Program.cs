using System.Text.RegularExpressions;

namespace ClubPenguinAlbumSplitter
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var files = Directory.GetFiles(args[0]);
            var albumfileRX = new Regex(@"(?<=- ).*,.*(?= ｜)", RegexOptions.Compiled);
            var newFilenameRX = new Regex(@"(?<=- ).*(?=, )", RegexOptions.Compiled);
            var NewFileRemovalRX = new Regex(@"(?<=- ).*(?=, ), ", RegexOptions.Compiled);
            var OldFileNameRX = new Regex(@"(?<=, ).*(?= ｜)", RegexOptions.Compiled);

            foreach (var file in files)
            {
                var fileInfo = new FileInfo(file);

                if (fileInfo.Exists)
                {
                    if (albumfileRX.Match(fileInfo.Name).Success)
                    {
                        var newfileNameCapture = newFilenameRX.Match(fileInfo.Name).Groups[0].Value;

                        var newFile = albumfileRX.Replace(fileInfo.FullName, newfileNameCapture);

                        File.Copy(fileInfo.FullName, newFile);

                        var oldfileNameCapture = OldFileNameRX.Match(fileInfo.Name).Groups[0].Value;

                        var oldFile = albumfileRX.Replace(fileInfo.FullName, oldfileNameCapture);

                        File.Move(fileInfo.FullName, oldFile);
                    }
                }
            }
        }
    }
}
