.class final enum Lcom/tencent/open/TaskGuide$TaskState;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/open/TaskGuide$TaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/open/TaskGuide$TaskState;

.field public static final enum INIT:Lcom/tencent/open/TaskGuide$TaskState;

.field public static final enum NORAML:Lcom/tencent/open/TaskGuide$TaskState;

.field public static final enum REWARD_FAIL:Lcom/tencent/open/TaskGuide$TaskState;

.field public static final enum REWARD_SUCCESS:Lcom/tencent/open/TaskGuide$TaskState;

.field public static final enum WAITTING_BACK_REWARD:Lcom/tencent/open/TaskGuide$TaskState;

.field public static final enum WAITTING_BACK_TASKINFO:Lcom/tencent/open/TaskGuide$TaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    new-instance v0, Lcom/tencent/open/TaskGuide$TaskState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/tencent/open/TaskGuide$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->INIT:Lcom/tencent/open/TaskGuide$TaskState;

    .line 261
    new-instance v0, Lcom/tencent/open/TaskGuide$TaskState;

    const-string v1, "WAITTING_BACK_TASKINFO"

    invoke-direct {v0, v1, v4}, Lcom/tencent/open/TaskGuide$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_TASKINFO:Lcom/tencent/open/TaskGuide$TaskState;

    .line 262
    new-instance v0, Lcom/tencent/open/TaskGuide$TaskState;

    const-string v1, "WAITTING_BACK_REWARD"

    invoke-direct {v0, v1, v5}, Lcom/tencent/open/TaskGuide$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_REWARD:Lcom/tencent/open/TaskGuide$TaskState;

    .line 263
    new-instance v0, Lcom/tencent/open/TaskGuide$TaskState;

    const-string v1, "NORAML"

    invoke-direct {v0, v1, v6}, Lcom/tencent/open/TaskGuide$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->NORAML:Lcom/tencent/open/TaskGuide$TaskState;

    .line 264
    new-instance v0, Lcom/tencent/open/TaskGuide$TaskState;

    const-string v1, "REWARD_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/tencent/open/TaskGuide$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->REWARD_SUCCESS:Lcom/tencent/open/TaskGuide$TaskState;

    .line 265
    new-instance v0, Lcom/tencent/open/TaskGuide$TaskState;

    const-string v1, "REWARD_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/TaskGuide$TaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->REWARD_FAIL:Lcom/tencent/open/TaskGuide$TaskState;

    .line 259
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/open/TaskGuide$TaskState;

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->INIT:Lcom/tencent/open/TaskGuide$TaskState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_TASKINFO:Lcom/tencent/open/TaskGuide$TaskState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->WAITTING_BACK_REWARD:Lcom/tencent/open/TaskGuide$TaskState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->NORAML:Lcom/tencent/open/TaskGuide$TaskState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/open/TaskGuide$TaskState;->REWARD_SUCCESS:Lcom/tencent/open/TaskGuide$TaskState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/open/TaskGuide$TaskState;->REWARD_FAIL:Lcom/tencent/open/TaskGuide$TaskState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/open/TaskGuide$TaskState;->$VALUES:[Lcom/tencent/open/TaskGuide$TaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/open/TaskGuide$TaskState;
    .locals 1
    .parameter

    .prologue
    .line 259
    const-class v0, Lcom/tencent/open/TaskGuide$TaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/TaskGuide$TaskState;

    return-object v0
.end method

.method public static values()[Lcom/tencent/open/TaskGuide$TaskState;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/tencent/open/TaskGuide$TaskState;->$VALUES:[Lcom/tencent/open/TaskGuide$TaskState;

    invoke-virtual {v0}, [Lcom/tencent/open/TaskGuide$TaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/open/TaskGuide$TaskState;

    return-object v0
.end method
