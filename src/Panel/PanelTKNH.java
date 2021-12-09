/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Panel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

import Frame.FrAddTKNH;
import Frame.FrSuaNDT;
import Frame.SQLCommand;
import Class.TKNH;
import javax.swing.JButton;
import javax.swing.GroupLayout.Alignment;
import javax.swing.GroupLayout;
import javax.swing.LayoutStyle.ComponentPlacement;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
/**
 *
 * @author dgleu
 */
public class PanelTKNH extends javax.swing.JFrame {

   
    public PanelTKNH() {
        initComponents();
    }
    private static TKNH t= new TKNH();
    private static SQLCommand SQL = new SQLCommand();
    public void FindTKNH(){
        t.setMaTKNH(MaTKNH_TF.getText());
    }
     public void GetInput(){
        t.setMaTKNH(MaTKNH_TF.getText());
        t.setMaTK(MaTK_TF.getText());
        t.setMaNH(MaNH_TF.getText());
        t.setSoTien(SoTien_TF.getText());
    }
    public void SetInput(){
        MaTKNH_TF.setText(t.getMaTKNH());
        MaTK_TF.setText(t.getMaTK());
        MaNH_TF.setText(t.getMaNH());
        SoTien_TF.setText(t.getSoTien());
   }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        header = new javax.swing.JLabel();
        MaTKNH_L = new javax.swing.JLabel();
        MaTKNH_TF = new javax.swing.JTextField();
        FindButton = new javax.swing.JButton();
        MaTK_L = new javax.swing.JLabel();
        MaNH_L = new javax.swing.JLabel();
        Sotien_L = new javax.swing.JLabel();
        MaTK_TF = new javax.swing.JTextField();
        MaNH_TF = new javax.swing.JTextField();
        SoTien_TF = new javax.swing.JTextField();
        Sua = new javax.swing.JButton();
        Xoa = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        header.setText("Xoa, sua thong tin tai khoan ngan hang");

        MaTKNH_L.setText("Ma TKNH");

        FindButton.setText("Tim Kiem");
        FindButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                FindButtonActionPerformed(evt);
            }
        });

        MaTK_L.setText("Ma TK");

        MaNH_L.setText("Ma NH");

        Sotien_L.setText("So tien");

        SoTien_TF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SoTien_TFActionPerformed(evt);
            }
        });

        Sua.setText("Sua");
        Sua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SuaActionPerformed(evt);
            }
        });

        Xoa.setText("Xoa");
        Xoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                XoaActionPerformed(evt);
            }
        });
        
        JButton btnThm = new JButton();
        btnThm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
            	   
          		     new FrAddTKNH().setVisible(true);
          		        
          		}
            
        });
			
      
    
       
        btnThm.setText("Thêm Moi");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        layout.setHorizontalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addComponent(header)
        			.addGap(0, 221, Short.MAX_VALUE))
        		.addGroup(layout.createSequentialGroup()
        			.addContainerGap()
        			.addGroup(layout.createParallelGroup(Alignment.LEADING)
        				.addComponent(MaTKNH_L)
        				.addComponent(MaTK_L)
        				.addComponent(MaNH_L)
        				.addComponent(Sotien_L))
        			.addGap(18)
        			.addGroup(layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(Alignment.TRAILING, layout.createSequentialGroup()
        					.addComponent(btnThm)
        					.addPreferredGap(ComponentPlacement.RELATED, 40, Short.MAX_VALUE)
        					.addComponent(Sua)
        					.addGap(44)
        					.addComponent(Xoa)
        					.addGap(85))
        				.addGroup(layout.createSequentialGroup()
        					.addGroup(layout.createParallelGroup(Alignment.LEADING, false)
        						.addComponent(MaTKNH_TF)
        						.addComponent(MaTK_TF)
        						.addComponent(MaNH_TF)
        						.addComponent(SoTien_TF, GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE))
        					.addGap(18)
        					.addComponent(FindButton)
        					.addContainerGap(37, Short.MAX_VALUE))))
        );
        layout.setVerticalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addComponent(header)
        			.addGap(18)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(MaTKNH_L)
        				.addComponent(MaTKNH_TF, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
        				.addComponent(FindButton))
        			.addGap(18)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(MaTK_L)
        				.addComponent(MaTK_TF, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
        			.addGap(18)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(MaNH_L)
        				.addComponent(MaNH_TF, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
        			.addGap(18)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(Sotien_L)
        				.addComponent(SoTien_TF, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
        			.addPreferredGap(ComponentPlacement.RELATED, 64, Short.MAX_VALUE)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(Xoa)
        				.addComponent(btnThm)
        				.addComponent(Sua))
        			.addGap(52))
        );
        getContentPane().setLayout(layout);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void SoTien_TFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SoTien_TFActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_SoTien_TFActionPerformed

    private void FindButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_FindButtonActionPerformed
        FindTKNH();
        // TODO add your handling code here:
        if(SQL.getTKNH(t, MaTKNH_TF.getText())==1){
            SetInput();
        }
        if(SQL.getTKNH(t, MaTKNH_TF.getText())==0){
            JOptionPane.showMessageDialog(rootPane, "Tai khoan khong ton tai");
        }
    }//GEN-LAST:event_FindButtonActionPerformed

    private void SuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SuaActionPerformed
        // TODO add your handling code here:
        GetInput();
        if (SQL.updateTKNH(t,t.getMaTKNH())==1){
            JOptionPane.showMessageDialog(rootPane, "Sua thanh cong!");
        }
        else
        {
            JOptionPane.showMessageDialog(rootPane, "Sua that bai! Vui long kiem tra lai");
        }
    }//GEN-LAST:event_SuaActionPerformed

    private void XoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_XoaActionPerformed
        // TODO add your handling code here:
        GetInput();
        if (SQL.deleteTKNH(t,t.getMaTKNH())==1){
            JOptionPane.showMessageDialog(rootPane, "Xoa thanh cong!");
        }
        else
        {
            JOptionPane.showMessageDialog(rootPane, "Xoa that bai! Vui long kiem tra lai");
        }
    }//GEN-LAST:event_XoaActionPerformed

 
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton FindButton;
    private javax.swing.JLabel MaNH_L;
    private javax.swing.JTextField MaNH_TF;
    private javax.swing.JLabel MaTKNH_L;
    private javax.swing.JTextField MaTKNH_TF;
    private javax.swing.JLabel MaTK_L;
    private javax.swing.JTextField MaTK_TF;
    private javax.swing.JTextField SoTien_TF;
    private javax.swing.JLabel Sotien_L;
    private javax.swing.JButton Sua;
    private javax.swing.JButton Xoa;
    private javax.swing.JLabel header;
}