.class Lcom/miantan/myoface/ShareAppActivity$2$1;
.super Ljava/lang/Object;
.source "ShareAppActivity.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareAppActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miantan/myoface/ShareAppActivity$2;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareAppActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareAppActivity$2$1;->this$1:Lcom/miantan/myoface/ShareAppActivity$2;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2$1;->this$1:Lcom/miantan/myoface/ShareAppActivity$2;

    #getter for: Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity$2;->access$0(Lcom/miantan/myoface/ShareAppActivity$2;)Lcom/miantan/myoface/ShareAppActivity;

    move-result-object v0

    #getter for: Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity;->access$2(Lcom/miantan/myoface/ShareAppActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2$1;->this$1:Lcom/miantan/myoface/ShareAppActivity$2;

    #getter for: Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity$2;->access$0(Lcom/miantan/myoface/ShareAppActivity$2;)Lcom/miantan/myoface/ShareAppActivity;

    move-result-object v0

    #getter for: Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity;->access$2(Lcom/miantan/myoface/ShareAppActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onComplete"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2$1;->this$1:Lcom/miantan/myoface/ShareAppActivity$2;

    #getter for: Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity$2;->access$0(Lcom/miantan/myoface/ShareAppActivity$2;)Lcom/miantan/myoface/ShareAppActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/miantan/myoface/ShareAppActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/ShareAppActivity;->access$0(Lcom/miantan/myoface/ShareAppActivity;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2$1;->this$1:Lcom/miantan/myoface/ShareAppActivity$2;

    #getter for: Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity$2;->access$0(Lcom/miantan/myoface/ShareAppActivity$2;)Lcom/miantan/myoface/ShareAppActivity;

    move-result-object v0

    #getter for: Lcom/miantan/myoface/ShareAppActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity;->access$2(Lcom/miantan/myoface/ShareAppActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2$1;->this$1:Lcom/miantan/myoface/ShareAppActivity$2;

    #getter for: Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareAppActivity$2;->access$0(Lcom/miantan/myoface/ShareAppActivity$2;)Lcom/miantan/myoface/ShareAppActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    #calls: Lcom/miantan/myoface/ShareAppActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/ShareAppActivity;->access$0(Lcom/miantan/myoface/ShareAppActivity;Ljava/lang/String;)V

    .line 580
    return-void
.end method
