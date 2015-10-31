.class Lcom/miantan/myoface/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/FeedbackActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/FeedbackActivity$2;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 219
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 220
    iget-object v1, p0, Lcom/miantan/myoface/FeedbackActivity$2;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    iget-object v1, v1, Lcom/miantan/myoface/FeedbackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    iget-object v1, p0, Lcom/miantan/myoface/FeedbackActivity$2;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miantan/myoface/FeedbackActivity;->saveImage(Z)I

    .line 224
    iget-object v1, p0, Lcom/miantan/myoface/FeedbackActivity$2;->this$0:Lcom/miantan/myoface/FeedbackActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/FeedbackActivity;->PostToServer()V

    .line 225
    return-void
.end method
