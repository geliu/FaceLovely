.class public enum Lcom/facebook/ResContainer$ResType;
.super Ljava/lang/Enum;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ResContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ResType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ResContainer$ResType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANIM:Lcom/facebook/ResContainer$ResType;

.field public static final enum COLOR:Lcom/facebook/ResContainer$ResType;

.field public static final enum DIMEN:Lcom/facebook/ResContainer$ResType;

.field public static final enum DRAWABLE:Lcom/facebook/ResContainer$ResType;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/ResContainer$ResType;

.field public static final enum ID:Lcom/facebook/ResContainer$ResType;

.field public static final enum LAYOUT:Lcom/facebook/ResContainer$ResType;

.field public static final enum RAW:Lcom/facebook/ResContainer$ResType;

.field public static final enum STRING:Lcom/facebook/ResContainer$ResType;

.field public static final enum STYLE:Lcom/facebook/ResContainer$ResType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/facebook/ResContainer$ResType$1;

    const-string v1, "LAYOUT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ResContainer$ResType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->LAYOUT:Lcom/facebook/ResContainer$ResType;

    .line 29
    new-instance v0, Lcom/facebook/ResContainer$ResType$2;

    const-string v1, "ID"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ResContainer$ResType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->ID:Lcom/facebook/ResContainer$ResType;

    .line 35
    new-instance v0, Lcom/facebook/ResContainer$ResType$3;

    const-string v1, "DRAWABLE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ResContainer$ResType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->DRAWABLE:Lcom/facebook/ResContainer$ResType;

    .line 41
    new-instance v0, Lcom/facebook/ResContainer$ResType$4;

    const-string v1, "STYLE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ResContainer$ResType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->STYLE:Lcom/facebook/ResContainer$ResType;

    .line 47
    new-instance v0, Lcom/facebook/ResContainer$ResType$5;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v7}, Lcom/facebook/ResContainer$ResType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->STRING:Lcom/facebook/ResContainer$ResType;

    .line 53
    new-instance v0, Lcom/facebook/ResContainer$ResType$6;

    const-string v1, "COLOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/ResContainer$ResType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->COLOR:Lcom/facebook/ResContainer$ResType;

    .line 59
    new-instance v0, Lcom/facebook/ResContainer$ResType$7;

    const-string v1, "DIMEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/ResContainer$ResType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->DIMEN:Lcom/facebook/ResContainer$ResType;

    .line 65
    new-instance v0, Lcom/facebook/ResContainer$ResType$8;

    const-string v1, "RAW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ResContainer$ResType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->RAW:Lcom/facebook/ResContainer$ResType;

    .line 71
    new-instance v0, Lcom/facebook/ResContainer$ResType$9;

    const-string v1, "ANIM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/ResContainer$ResType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ResContainer$ResType;->ANIM:Lcom/facebook/ResContainer$ResType;

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/ResContainer$ResType;

    sget-object v1, Lcom/facebook/ResContainer$ResType;->LAYOUT:Lcom/facebook/ResContainer$ResType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ResContainer$ResType;->ID:Lcom/facebook/ResContainer$ResType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ResContainer$ResType;->DRAWABLE:Lcom/facebook/ResContainer$ResType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ResContainer$ResType;->STYLE:Lcom/facebook/ResContainer$ResType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ResContainer$ResType;->STRING:Lcom/facebook/ResContainer$ResType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ResContainer$ResType;->COLOR:Lcom/facebook/ResContainer$ResType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ResContainer$ResType;->DIMEN:Lcom/facebook/ResContainer$ResType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ResContainer$ResType;->RAW:Lcom/facebook/ResContainer$ResType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ResContainer$ResType;->ANIM:Lcom/facebook/ResContainer$ResType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ResContainer$ResType;->ENUM$VALUES:[Lcom/facebook/ResContainer$ResType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/facebook/ResContainer$ResType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/facebook/ResContainer$ResType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ResContainer$ResType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/facebook/ResContainer$ResType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ResContainer$ResType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ResContainer$ResType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/ResContainer$ResType;->ENUM$VALUES:[Lcom/facebook/ResContainer$ResType;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/ResContainer$ResType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
