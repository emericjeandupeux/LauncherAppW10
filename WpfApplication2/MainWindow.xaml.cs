using System;

using System.IO;

using System.Windows;

using System.Windows.Input;

using System.Windows.Forms;

namespace WpfApplication2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private TCPServer.MainWindow app;
        NotifyIcon nIcon = new NotifyIcon();

        public MainWindow()
        {
            InitializeComponent();

            
            var crtDir = Directory.GetCurrentDirectory();
            string resDir = null;

            crtDir = Directory.GetParent(crtDir).FullName;
            var subDir = Directory.GetDirectories(crtDir,"Ressources");
            if (subDir.Length == 1)
                resDir = subDir[0];
            else
            {
            crtDir = Directory.GetParent(crtDir).FullName;
            subDir = Directory.GetDirectories(crtDir, "Ressources");
                if (subDir.Length == 1)
                    resDir = subDir[0];
            }
            if (resDir != null)
            {
                this.nIcon.Icon = new System.Drawing.Icon(resDir + "\\favicon.ico");
                //this.nIcon.ShowBalloonTip(5000, "Launcher", "This is a BallonTip from Windows Notification", ToolTipIcon.Info);
                nIcon.DoubleClick += NIcon_DoubleClick;
            }
        }

        private void NIcon_DoubleClick(object sender, EventArgs e)
        {
            this.Show();
            nIcon.Visible = false;
        }

        private void DragWindowEvent(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void CloseWindow(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void App_Click(object sender, RoutedEventArgs e)
        {
            app = new TCPServer.MainWindow();
            app.Show();
            MinimiseWindow(sender, e);
        }

        private void MinimiseWindow(object sender, RoutedEventArgs e)
        {
            this.Hide();
            nIcon.Visible = true;
        }
    }
}
