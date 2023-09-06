package invoicesystem;

/**
 *
 * @author Shubham
 */
public class InvoiceSystem {

    public static void main(String[] args) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LoginForm().setVisible(true);
            }
        });
    }
    
}
