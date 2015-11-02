.class public Lcom/tencent/javascript/RawFile;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static fileList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "constant.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "platform.js"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tencent.html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "utils.js"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tencent.js"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/javascript/RawFile;->fileList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
