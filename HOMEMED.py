import tkinter as tk
from tkinter import *
import mysql.connector
from tkinter import ttk
from tkinter.ttk import Progressbar
import time

#Create the connection object 
root=Tk()
   
def open():
    
    
    root2 = Toplevel()
    root2.title('-:ENTER YOUR DETAILS:-')
    root2.configure(bg="#05867E")
    fr3=Frame(root2,border=5,background="#05867E")
    fr3.pack(anchor=tk.CENTER)

    l1= Label(fr3,text = 'Full Name ',background='#05867E',foreground='white', font=("Times new roman",15,"bold")).grid(row=0,column=6, sticky=W,padx=10,pady=10)
    l2= Label(fr3,text = 'Age',background='#05867E',foreground='white', font=("Times new roman",15,"bold")).grid(row=1,column=6, sticky=W,padx=10,pady=10)
    l3= Label(fr3,text = 'Gender',background='#05867E',foreground='white', font=("Times new roman",15,"bold")).grid(row=2,column=6, sticky=W,padx=10,pady=10)
    l4= Label(fr3,text = 'Contact Number',background='#05867E',foreground='white', font=("Times new roman",15,"bold")).grid(row=3,column=6, sticky=W,padx=10,pady=10)
    
    rv=IntVar()
    r1 = Entry(fr3)
    r2 = Entry(fr3)
    r3 = Radiobutton(fr3,text="Male",value=1,variable=rv,fg="black",bg="#05867E",font=("Times new roman",15,))
    r31=Radiobutton(fr3,text="Female",value=2,variable=rv,fg="black",bg="#05867E",font=("Times new roman",15))
    r32=Radiobutton(fr3,text="Other",value=3,variable=rv,fg="black",bg="#05867E",font=("Times new roman",15))
    r4 = Entry(fr3)
    r1.grid(row=0,column=9)
    r2.grid(row=1,column=9)
    r3.grid(row=2,column=9, sticky=W)
    r31.grid(row=2,column=10, sticky=W)
    r32.grid(row=2,column=11, sticky=W,ipadx=55)
    r4.grid(row=3,column=9)

    
    root2.geometry("630x385")

    button3 = Button(fr3, text='Next',background='white',foreground='#05867E', command=open2, font=("Times new roman",15,"bold","underline"))
    button3.grid(row=4,column=9,pady=10)

def open2():
     
    root3=Toplevel()
    root3.title('-:SELECT THE SYMPTOMS:-')
    root3.configure(bg='#05867E')
    root3.geometry("630x385")
    
    text = ttk.Label(root3, text="-:SYMPTOMS:-")
    text.config(foreground="White", background="#05867E", font=("Times new roman",20,"bold","underline"))
    text.pack(pady=5)
    def Trial():
        # connecting to the database 
        dataBase = mysql.connector.connect(host = "localhost", user = "newuser",passwd = "password",database="HomeMed")
    
        # preparing a cursor object
        #Suffer=""
        for i in listbox.curselection():
            if i==0:
                Suffer="Fever"
            elif i==1:
                Suffer="Cough"
            elif i==2:
                Suffer="Body Pain"
            elif i==3:
                Suffer="Snezzing"
            elif i==4:
                Suffer="Headache"
            elif i==5:
                Suffer="Vomiting"
            else:
                Suffer="None"                    
    
        optval=cop1.get()

        cursorObject = dataBase.cursor()
        S=optval
        q3= "SELECT Medicine FROM "
        q4=" where D_Name="
        q5="'"
        q6=q3+S+q4+q5+Suffer+q5
        lst=""
        cursorObject.execute(q6)
        myresult = cursorObject.fetchall() 
        for x in myresult:
            lst=x
        
        #displaying diseases
        SEN_DIS="Medicine for :"+Suffer
        disp_Dis.config(text=SEN_DIS,bg="white",font=("verdana",10))
        #displaying medicine
        dis_Med.config(text=lst,bg="white",font=("verdana",8))
        # disconnecting from server
        dataBase.close()
    #Frame.3 Displaying list of diseases      
    fr1=Frame(root3,borderwidth=20)
    fr1.pack(anchor=tk.CENTER)
    fr1.configure(background="white")
    Label(fr1,text="Select Your Symptoms From The List").pack(anchor=N)
    listbox = Listbox(fr1, width=40, height=10, selectmode=MULTIPLE)
 
    # Inserting the listbox items
    listbox.insert(1, "Fever")
    listbox.insert(2, "Cough")
    listbox.insert(3, "Body Pain")
    listbox.insert(4, "Snezzing")
    listbox.insert(5, "Headache")
    listbox.insert(6, "Vomiting")

    # Placing the listbox
    listbox.pack()
    cop1=StringVar()
    op1=Radiobutton(fr1,text="Low",value="Low",variable=cop1)
    op1.pack(side="left",padx=4)
    op2=Radiobutton(fr1,text="Normal",value="Normal",variable=cop1)
    op2.pack(side="left",padx=4)
    op3=Radiobutton(fr1,text="High",value="High",variable=cop1)
    op3.pack(side="left",padx=4)

    # Progress bar widget
    progress = Progressbar(root3, orient = HORIZONTAL,
              length = 100, mode = 'determinate')
  
# Function responsible for the updation
# of the progress bar value
    def bar():
        progress['value'] = 20
        root3.update_idletasks()
        time.sleep(1)

        progress['value'] = 50
        root3.update_idletasks()
        time.sleep(1)
    
        progress['value'] = 80
        root3.update_idletasks()
        time.sleep(1)      
        progress['value'] = 100
    all_commanVRb=lambda: [bar(), open4(),Trial()]
    button4 =Button(root3, text = 'Submit', command = all_commanVRb).pack(pady = 10)    
    progress.pack(pady =2)

def close():
    exit(0)

def open4():
    global photo2
    global labelphoto
    top = Toplevel()
    top.title('HOMEMED')
    top.geometry("335x550")
    top.configure(bg='#0A877E')
    photo2 = PhotoImage(file="HOMEMEDPRES.png")
    labelphoto = Label(top,image=photo2,background="#05867E",borderwidth=20)
    labelphoto.place(x=0,y=0)
    global disp_Dis
    disp_Dis=Label(top)
    disp_Dis.place(x=20,y=120)
    global dis_Med
    dis_Med=Label(top)
    dis_Med.place(x=20,y=140)

    button2 = Button(top, text='Close',background='#05867E',foreground='white',width=10,height=2,command=close,borderwidth=5 )
    button2.pack(side="bottom")

#window.1
root.title('HOMEMED')
root.configure(bg='#05867E')
photo = PhotoImage(file="HOMEMEDLOGO.png")
HomePage = Label(image=photo)
HomePage.pack()  
button = Button(root, text='Proceed', anchor="center", background='white', foreground='#05867E',
                command=open, font=("Times new roman", 15, "bold", "underline")).pack(pady=10)
root.mainloop()