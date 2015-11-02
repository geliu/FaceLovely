.class public Lcom/tencent/sdkutil/HttpUtils$NetworkProxy;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final host:Ljava/lang/String;

.field public final port:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-object p1, p0, Lcom/tencent/sdkutil/HttpUtils$NetworkProxy;->host:Ljava/lang/String;

    .line 1448
    iput p2, p0, Lcom/tencent/sdkutil/HttpUtils$NetworkProxy;->port:I

    .line 1449
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tencent/sdkutil/HttpUtils$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1441
    invoke-direct {p0, p1, p2}, Lcom/tencent/sdkutil/HttpUtils$NetworkProxy;-><init>(Ljava/lang/String;I)V

    return-void
.end method
