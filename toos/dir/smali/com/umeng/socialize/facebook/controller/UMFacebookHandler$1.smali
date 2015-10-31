.class Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$1;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$1;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$1;->this$0:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;

    #calls: Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->onStatusChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2, p3}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;->access$0(Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 201
    return-void
.end method
