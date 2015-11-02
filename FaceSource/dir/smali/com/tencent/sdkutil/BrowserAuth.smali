.class public Lcom/tencent/sdkutil/BrowserAuth;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "BrowserAuth"

.field public static instance:Lcom/tencent/sdkutil/BrowserAuth;

.field private static serial:I


# instance fields
.field public final KEY_CHAR_LIST:Ljava/lang/String;

.field public authMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/sdkutil/BrowserAuth$Auth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    const-class v0, Lcom/tencent/sdkutil/BrowserAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/sdkutil/BrowserAuth;->$assertionsDisabled:Z

    .line 13
    sput v1, Lcom/tencent/sdkutil/BrowserAuth;->serial:I

    return-void

    :cond_0
    move v0, v1

    .line 10
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/sdkutil/BrowserAuth;->authMap:Ljava/util/HashMap;

    .line 55
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    iput-object v0, p0, Lcom/tencent/sdkutil/BrowserAuth;->KEY_CHAR_LIST:Ljava/lang/String;

    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    sget-boolean v1, Lcom/tencent/sdkutil/BrowserAuth;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    .line 82
    mul-int/lit8 v5, v0, 0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 83
    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 86
    xor-int/2addr v5, v6

    .line 88
    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    rem-int/2addr v1, v3

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/sdkutil/BrowserAuth;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/sdkutil/BrowserAuth;->instance:Lcom/tencent/sdkutil/BrowserAuth;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/sdkutil/BrowserAuth;

    invoke-direct {v0}, Lcom/tencent/sdkutil/BrowserAuth;-><init>()V

    sput-object v0, Lcom/tencent/sdkutil/BrowserAuth;->instance:Lcom/tencent/sdkutil/BrowserAuth;

    .line 27
    :cond_0
    sget-object v0, Lcom/tencent/sdkutil/BrowserAuth;->instance:Lcom/tencent/sdkutil/BrowserAuth;

    return-object v0
.end method

.method public static getSerial()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/tencent/sdkutil/BrowserAuth;->serial:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/sdkutil/BrowserAuth;->serial:I

    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/tencent/sdkutil/BrowserAuth;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/tencent/sdkutil/BrowserAuth$Auth;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/sdkutil/BrowserAuth;->authMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/sdkutil/BrowserAuth$Auth;

    return-object v0
.end method

.method public makeKey()Ljava/lang/String;
    .locals 9

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 59
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 60
    array-length v3, v2

    .line 61
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    int-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 64
    aget-char v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/sdkutil/BrowserAuth;->authMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public set(Lcom/tencent/sdkutil/BrowserAuth$Auth;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/tencent/sdkutil/BrowserAuth;->getSerial()I

    move-result v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/tencent/sdkutil/BrowserAuth;->authMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
