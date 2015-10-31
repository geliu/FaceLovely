.class public Lcom/tencent/sdkutil/Util$Statistic;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public reqSize:J

.field public response:Ljava/lang/String;

.field public rspSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/tencent/sdkutil/Util$Statistic;->response:Ljava/lang/String;

    .line 186
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/sdkutil/Util$Statistic;->reqSize:J

    .line 187
    iget-object v0, p0, Lcom/tencent/sdkutil/Util$Statistic;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/sdkutil/Util$Statistic;->response:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/sdkutil/Util$Statistic;->rspSize:J

    .line 189
    :cond_0
    return-void
.end method
