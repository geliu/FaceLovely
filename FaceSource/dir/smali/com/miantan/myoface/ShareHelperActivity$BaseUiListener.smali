.class Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;
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
    name = "BaseUiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method private constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;-><init>(Lcom/miantan/myoface/ShareHelperActivity;)V

    return-void
.end method


# virtual methods
.method protected doComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 1150
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 1158
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Lcom/miantan/myoface/ShareHelperActivity$BaseUiListener;->doComplete(Lorg/json/JSONObject;)V

    .line 1146
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1154
    return-void
.end method
