.class public Lcom/miantan/myoface/JavaScriptObject;
.super Ljava/lang/Object;
.source "JavaScriptObject.java"


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field mContxt:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miantan/myoface/JavaScriptObject;->LOG_TAG:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/miantan/myoface/JavaScriptObject;->mContxt:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/miantan/myoface/JavaScriptObject;->mContxt:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method public delRecord(Ljava/lang/String;)V
    .locals 4
    .parameter "sId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    .local v1, id:I
    iget-object v3, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 71
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    iget-object v3, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method public editRecord(Ljava/lang/String;)V
    .locals 6
    .parameter "sId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 55
    iget-object v3, p0, Lcom/miantan/myoface/JavaScriptObject;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "editRecord:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 57
    .local v1, id:I
    iget-object v3, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 58
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 62
    iget-object v3, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .parameter "position"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 44
    .local v0, msg:Landroid/os/Message;
    if-nez p1, :cond_1

    .line 45
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 49
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miantan/myoface/JavaScriptObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void

    .line 46
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 47
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
