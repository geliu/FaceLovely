.class public Lcom/tencent/sdkutil/HttpUtils$Statistic;
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
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-object p1, p0, Lcom/tencent/sdkutil/HttpUtils$Statistic;->response:Ljava/lang/String;

    .line 787
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/sdkutil/HttpUtils$Statistic;->reqSize:J

    .line 788
    iget-object v0, p0, Lcom/tencent/sdkutil/HttpUtils$Statistic;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/tencent/sdkutil/HttpUtils$Statistic;->response:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/sdkutil/HttpUtils$Statistic;->rspSize:J

    .line 790
    :cond_0
    return-void
.end method
