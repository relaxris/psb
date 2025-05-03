
package transaksi;

import Tampilan.transaksi;
//import Tampilan.kasir;
import koneksi.koneksi;
import java.sql.Connection;
/**
 *
 * @author Haycel arza chalvin
 */
public class home {
    public static void main(String[] args) {
        // Test connection to database first
        koneksi k = new koneksi();
        Connection conn = k.connect();
        
        if (conn != null) {
            /* Set the Nimbus look and feel */
            try {
                for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                    if ("Nimbus".equals(info.getName())) {
                        javax.swing.UIManager.setLookAndFeel(info.getClassName());
                        break;
                    }
                }
            } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
                java.util.logging.Logger.getLogger(transaksi.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
            
            /* Create and display the Pelanggan form */
            java.awt.EventQueue.invokeLater(new Runnable() {
                @Override
                public void run() {
                    new transaksi().setVisible(true);
//                    new kasir().setVisible(true);
                }
            });
        } else {
            System.out.println("Aplikasi tidak dapat dijalankan karena koneksi database gagal");
        }
    }
    
}
