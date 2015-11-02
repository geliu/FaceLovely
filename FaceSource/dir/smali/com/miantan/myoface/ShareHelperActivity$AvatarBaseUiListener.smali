.class Lcom/miantan/myoface/ShareHelperActivity$AvatarBaseUiListener;
.super Ljava/lang/Object;
.source "ShareHelperActivity.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/ShareHelperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarBaseUiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method public constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$AvatarBaseUiListener;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1100
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1104
    return-void
.end method
