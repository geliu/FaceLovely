.class abstract Lcom/tencent/tauth/Tencent$FeedConfirmListener$ButtonListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field dialog:Landroid/app/Dialog;

.field final synthetic this$1:Lcom/tencent/tauth/Tencent$FeedConfirmListener;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/Tencent$FeedConfirmListener;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$ButtonListener;->this$1:Lcom/tencent/tauth/Tencent$FeedConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    iput-object p2, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$ButtonListener;->dialog:Landroid/app/Dialog;

    .line 1521
    return-void
.end method
