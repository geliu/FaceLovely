.class Lcom/umeng/socialize/kakao/controller/UMKakaoHandler$1;
.super Ljava/lang/Object;
.source "UMKakaoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler$1;->this$0:Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2
    .parameter "context"
    .parameter "entity"
    .parameter "listener"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler$1;->this$0:Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;

    #setter for: Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->access$0(Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;Landroid/content/Context;)V

    .line 66
    sput-object p2, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler$1;->this$0:Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler$1;->this$0:Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;

    iget-object v1, v1, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {v0, v1, p2, p3}, Lcom/umeng/socialize/kakao/controller/UMKakaoHandler;->handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 68
    return-void
.end method
