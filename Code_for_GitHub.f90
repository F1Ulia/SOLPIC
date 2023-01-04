    subroutine disp_incl_func(f_c,xn_re,xn_im)
      implicit double precision (a-h,o-p,r-z)
      A=2.0065d0 
      B=1.5748d6 
      C=1d8 
      D=1.5868d0 
      E=2606.3d0
      xl_ang=2.d0*3.141d0*3d8/f_c*1d10
      xn_re_sq=abs(A+B*xl_ang**2/(xl_ang**2-C**2)
     >+D*xl_ang**2/(xl_ang**2-E**2))
      xn_re=dsqrt(xn_re_sq)
      xn_im=0.d0
      end 

