.class enum Lcom/facebook/ResContainer$ResType$6;
.super Lcom/facebook/ResContainer$ResType;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ResContainer$ResType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ResContainer$ResType;-><init>(Ljava/lang/String;ILcom/facebook/ResContainer$ResType;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "color"

    return-object v0
.end method
