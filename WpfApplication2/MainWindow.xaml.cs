using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
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

            this.nIcon.Icon = new System.Drawing.Icon(@"C:\Users\emeri\Documents\Visual Studio 2015\Projects\TCPServer\TCPServer\favicon.ico");
            this.nIcon.ShowBalloonTip(5000, "Hi", "This is a BallonTip from Windows Notification", ToolTipIcon.Info);
            nIcon.DoubleClick += NIcon_DoubleClick;  
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
