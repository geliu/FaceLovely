.class Lcom/miantan/myoface/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ColorPickerDialog$1;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$1;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    #getter for: Lcom/miantan/myoface/ColorPickerDialog;->myView:Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;
    invoke-static {v1}, Lcom/miantan/myoface/ColorPickerDialog;->access$2(Lcom/miantan/myoface/ColorPickerDialog;)Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miantan/myoface/ColorPickerDialog$ColorPickerView;->getCenterPaintColor()I

    move-result v0

    .line 75
    .local v0, color:I
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$1;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    #getter for: Lcom/miantan/myoface/ColorPickerDialog;->mListener:Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;
    invoke-static {v1}, Lcom/miantan/myoface/ColorPickerDialog;->access$1(Lcom/miantan/myoface/ColorPickerDialog;)Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 76
    iget-object v1, p0, Lcom/miantan/myoface/ColorPickerDialog$1;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    invoke-virtual {v1}, Lcom/miantan/myoface/ColorPickerDialog;->dismiss()V

    .line 77
    return-void
.end method
