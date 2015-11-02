.class Lcom/tencent/open/TaskGuide$StepInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field endTime:J

.field status:I

.field stepDesc:Ljava/lang/String;

.field stepGift:Ljava/lang/String;

.field stepNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput p1, p0, Lcom/tencent/open/TaskGuide$StepInfo;->stepNumber:I

    .line 788
    iput-object p2, p0, Lcom/tencent/open/TaskGuide$StepInfo;->stepDesc:Ljava/lang/String;

    .line 789
    iput-object p3, p0, Lcom/tencent/open/TaskGuide$StepInfo;->stepGift:Ljava/lang/String;

    .line 790
    iput-wide p4, p0, Lcom/tencent/open/TaskGuide$StepInfo;->endTime:J

    .line 791
    iput p6, p0, Lcom/tencent/open/TaskGuide$StepInfo;->status:I

    .line 792
    return-void
.end method
