.class Lcom/tencent/open/TaskGuide$TaskInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final STEP_INFO_KEY:Ljava/lang/String; = "step_info"

.field private static final TASK_DESC_KEY:Ljava/lang/String; = "task_desc"

.field private static final TASK_ID_KEY:Ljava/lang/String; = "task_id"


# instance fields
.field stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

.field taskDesc:Ljava/lang/String;

.field taskId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateFromJSONObject(Lorg/json/JSONObject;)Lcom/tencent/open/TaskGuide$TaskInfo;
    .locals 11
    .parameter

    .prologue
    .line 733
    if-nez p0, :cond_0

    .line 736
    const/4 v0, 0x0

    .line 772
    :goto_0
    return-object v0

    .line 743
    :cond_0
    new-instance v7, Lcom/tencent/open/TaskGuide$TaskInfo;

    invoke-direct {v7}, Lcom/tencent/open/TaskGuide$TaskInfo;-><init>()V

    .line 744
    const-string v0, "task_info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 745
    const-string v1, "task_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->taskId:Ljava/lang/String;

    .line 746
    const-string v1, "task_desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->taskDesc:Ljava/lang/String;

    .line 747
    const-string v1, "step_info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 748
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 750
    if-lez v10, :cond_1

    .line 751
    new-array v0, v10, [Lcom/tencent/open/TaskGuide$StepInfo;

    iput-object v0, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    .line 754
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_2

    .line 755
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 756
    const-string v1, "step_no"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 757
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 761
    const-string v2, "step_desc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 763
    const-string v3, "step_gift"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 767
    const-string v4, "end_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 769
    new-instance v0, Lcom/tencent/open/TaskGuide$StepInfo;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/TaskGuide$StepInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 770
    iget-object v1, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    aput-object v0, v1, v8

    .line 754
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    move-object v0, v7

    .line 772
    goto :goto_0
.end method

.method static manualGenerateTaskInfo()Lcom/tencent/open/TaskGuide$TaskInfo;
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 720
    new-instance v7, Lcom/tencent/open/TaskGuide$TaskInfo;

    invoke-direct {v7}, Lcom/tencent/open/TaskGuide$TaskInfo;-><init>()V

    .line 721
    const-string v0, "1111133333"

    iput-object v0, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->taskId:Ljava/lang/String;

    .line 722
    const-string v0, "xxxxx"

    iput-object v0, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->taskDesc:Ljava/lang/String;

    .line 723
    new-array v0, v6, [Lcom/tencent/open/TaskGuide$StepInfo;

    iput-object v0, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    .line 724
    new-instance v0, Lcom/tencent/open/TaskGuide$StepInfo;

    const-string v2, "\u4e00\u8d70\u4e86\u4e4b\u4f60\u597d"

    const-string v3, "4\u91d1\u52b5"

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/TaskGuide$StepInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 725
    iget-object v2, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    aput-object v0, v2, v1

    .line 726
    new-instance v0, Lcom/tencent/open/TaskGuide$StepInfo;

    const-string v2, "\u7535\u8111\u63a8\u9001QQ\u6ce1\u6ce1\u6bdb\u4f60\u597d"

    const-string v3, "500\u91d1\u52b5"

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/tencent/open/TaskGuide$StepInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 727
    iget-object v1, v7, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    aput-object v0, v1, v8

    .line 729
    return-object v7
.end method


# virtual methods
.method public isValidTask()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$TaskInfo;->taskId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$TaskInfo;->stepInfoArray:[Lcom/tencent/open/TaskGuide$StepInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
