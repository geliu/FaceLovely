.class public Lcom/facebook/ResContainer$SocializeResource;
.super Ljava/lang/Object;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ResContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocializeResource"
.end annotation


# instance fields
.field public mId:I

.field public mIsCompleted:Z

.field public mName:Ljava/lang/String;

.field public mType:Lcom/facebook/ResContainer$ResType;


# direct methods
.method public constructor <init>(Lcom/facebook/ResContainer$ResType;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "name"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ResContainer$SocializeResource;->mIsCompleted:Z

    .line 217
    iput-object p1, p0, Lcom/facebook/ResContainer$SocializeResource;->mType:Lcom/facebook/ResContainer$ResType;

    .line 218
    iput-object p2, p0, Lcom/facebook/ResContainer$SocializeResource;->mName:Ljava/lang/String;

    .line 219
    return-void
.end method
