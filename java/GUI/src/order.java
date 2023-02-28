import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.NumberFormat;

public class order extends JDialog {
    private JPanel contentPane;
    private JButton buttonOK;
    private JCheckBox kebab15000CheckBox;
    private JCheckBox geprek13000CheckBox;
    private JCheckBox martabak19000CheckBox;
    private JCheckBox seblak25000CheckBox;
    private JTextField textField1;
    private JTextField textField2;
    private JTextField textField3;
    private JTextField textField4;
    private JTextField textField5;
    private JButton hitungButton;
    private JButton clearButton;

    private void delete() {
        textField1.setEditable(false);
        textField2.setEditable(false);
        textField3.setEditable(false);
        textField4.setEditable(false);
        textField5.setText("0");
        kebab15000CheckBox.setSelected(false);
        geprek13000CheckBox.setSelected(false);
        martabak19000CheckBox.setSelected(false);
        seblak25000CheckBox.setSelected(false);
        textField1.setText(null);
        textField2.setText(null);
        textField3.setText(null);
        textField4.setText(null);
        textField5.setText(null);
    }

    public order() {
        setContentPane(contentPane);
        setModal(true);

        NumberFormat formatter = NumberFormat.getInstance();

        // default
        delete();

        kebab15000CheckBox.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if (kebab15000CheckBox.isSelected()) {
                    textField1.setEditable(true);
                } else {
                    textField1.setEditable(false);
                }
            }
        });

        geprek13000CheckBox.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if (geprek13000CheckBox.isSelected()) {
                    textField2.setEditable(true);
                } else {
                    textField2.setEditable(false);
                }
            }
        });

        martabak19000CheckBox.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if (martabak19000CheckBox.isSelected()) {
                    textField3.setEditable(true);
                } else {
                    textField3.setEditable(false);
                }
            }
        });

        seblak25000CheckBox.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if (seblak25000CheckBox.isSelected()) {
                    textField4.setEditable(true);
                } else {
                    textField4.setEditable(false);
                }
            }
        });

        hitungButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int total = 0;
                if (kebab15000CheckBox.isSelected()) {
                    total += 15000 * Integer.parseInt(textField1.getText());
                }
                if (geprek13000CheckBox.isSelected()) {
                    total += 13000 * Integer.parseInt(textField2.getText());
                }
                if (martabak19000CheckBox.isSelected()) {
                    total += 19000 * Integer.parseInt(textField3.getText());
                }
                if (seblak25000CheckBox.isSelected()) {
                    total += 25000 * Integer.parseInt(textField4.getText());
                }
                textField5.setText("Rp. " + formatter.format(total));
            }
        });

        clearButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                delete();
            }
        });

    }

    public static void main(String[] args) {
        order dialog = new order();

        dialog.pack();
        dialog.setVisible(true);

        System.exit(0);
    }

}
