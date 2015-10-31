.class public Lcom/miantan/myoface/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;,
        Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private final debug:Z

.field private mInitialColor:I

.field private mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

.field private myView:Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;)V
    .locals 1
    .parameter "context"
    .parameter "initialColor"
    .parameter "listener"

    .prologue
    .line 44
    const v0, 0x7f090005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->debug:Z

    .line 29
    const-string v0, "ColorPicker"

    iput-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/miantan/myoface/ColorPickerDialog;->context:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    .line 47
    iput p2, p0, Lcom/miantan/myoface/ColorPickerDialog;->mInitialColor:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 38
    const/high16 v0, -0x100

    invoke-direct {p0, p1, v0, p2}, Lcom/miantan/myoface/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/ColorPickerDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->mInitialColor:I

    return v0
.end method

.method static synthetic access$1(Lcom/miantan/myoface/ColorPickerDialog;)Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/miantan/myoface/ColorPickerDialog;)Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->myView:Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;

    return-object v0
.end method


# virtual methods
.method public getmInitialColor()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->mInitialColor:I

    return v0
.end method

.method public getmListener()Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/miantan/myoface/ColorPickerDialog;->requestWindowFeature(I)Z

    .line 55
    iget-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 56
    .local v2, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f030010

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 57
    .local v6, view:Landroid/view/View;
    const v8, 0x7f0b00a6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 60
    .local v4, linearlayout_myview:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/miantan/myoface/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 61
    .local v5, manager:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f333333

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 62
    .local v7, width:I
    const v8, 0x3f99999a

    int-to-float v9, v7

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 65
    .local v3, height:I
    new-instance v8, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;

    iget-object v9, p0, Lcom/miantan/myoface/ColorPickerDialog;->context:Landroid/content/Context;

    invoke-direct {v8, p0, v9, v3, v7}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;-><init>(Lcom/miantan/myoface/ColorPickerDialog;Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog;->myView:Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;

    .line 66
    iget-object v8, p0, Lcom/miantan/myoface/ColorPickerDialog;->myView:Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const v8, 0x7f0b00a9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 69
    .local v1, btn_ok:Landroid/widget/Button;
    new-instance v8, Lcom/miantan/myoface/ColorPickerDialog$1;

    invoke-direct {v8, p0}, Lcom/miantan/myoface/ColorPickerDialog$1;-><init>(Lcom/miantan/myoface/ColorPickerDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v8, 0x7f0b00a8

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, btn_cancel:Landroid/widget/Button;
    new-instance v8, Lcom/miantan/myoface/ColorPickerDialog$2;

    invoke-direct {v8, p0}, Lcom/miantan/myoface/ColorPickerDialog$2;-><init>(Lcom/miantan/myoface/ColorPickerDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/miantan/myoface/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 144
    const-string v8, "Select Color"

    invoke-virtual {p0, v8}, Lcom/miantan/myoface/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public setmInitialColor(I)V
    .locals 0
    .parameter "mInitialColor"

    .prologue
    .line 423
    iput p1, p0, Lcom/miantan/myoface/ColorPickerDialog;->mInitialColor:I

    .line 424
    return-void
.end method

.method public setmListener(Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    .line 430
    return-void
.end method
