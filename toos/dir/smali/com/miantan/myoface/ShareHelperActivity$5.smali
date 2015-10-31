.class Lcom/miantan/myoface/ShareHelperActivity$5;
.super Ljava/lang/Object;
.source "ShareHelperActivity.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareHelperActivity;->doShareToFB(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$5;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3
    .parameter "platform"
    .parameter "eCode"
    .parameter "entity"

    .prologue
    const/4 v2, 0x0

    .line 1309
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$5;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$8(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5206\u4eab\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1314
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$5;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$8(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$5;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$8(Lcom/miantan/myoface/ShareHelperActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5206\u4eab\u5f00\u59cb"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1304
    return-void
.end method
