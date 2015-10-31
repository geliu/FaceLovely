.class Lcom/miantan/myoface/ColorPickerDialog$2;
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
    iput-object p1, p0, Lcom/miantan/myoface/ColorPickerDialog$2;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miantan/myoface/ColorPickerDialog$2;->this$0:Lcom/miantan/myoface/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/miantan/myoface/ColorPickerDialog;->dismiss()V

    .line 89
    return-void
.end method
