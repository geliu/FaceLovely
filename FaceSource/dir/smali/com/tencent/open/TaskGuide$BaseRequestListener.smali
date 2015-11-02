.class abstract Lcom/tencent/open/TaskGuide$BaseRequestListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TaskGuide;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$BaseRequestListener;->this$0:Lcom/tencent/open/TaskGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;-><init>(Lcom/tencent/open/TaskGuide;)V

    return-void
.end method


# virtual methods
.method protected abstract handleException(Ljava/lang/Exception;)V
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 881
    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 895
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 896
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 866
    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 876
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 871
    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 891
    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 886
    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lcom/tencent/open/TaskGuide$BaseRequestListener;->handleException(Ljava/lang/Exception;)V

    .line 901
    return-void
.end method
