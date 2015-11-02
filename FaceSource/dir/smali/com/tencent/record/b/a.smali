.class public Lcom/tencent/record/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 55
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 57
    invoke-static {v3}, Lcom/tencent/record/b/a;->a(Ljava/io/File;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method
