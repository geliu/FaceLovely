.class Lcom/miantan/myoface/ShareHelperActivity$4;
.super Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;
.source "ShareHelperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareHelperActivity;->LoginAndStartAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$4;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    .line 1164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;-><init>(Lcom/miantan/myoface/ShareHelperActivity;Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;)V

    return-void
.end method


# virtual methods
.method protected doComplete(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$4;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    iget-object v0, v0, Lcom/miantan/myoface/ShareHelperActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v1, "user/get_simple_userinfo"

    const-string v3, "GET"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tauth/Tencent;->requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 1172
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$4;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-virtual {v0}, Lcom/miantan/myoface/ShareHelperActivity;->startAvatar()V

    .line 1173
    return-void
.end method
