.class Lcom/tencent/sdkutil/AppUtils$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/AppUtils;


# direct methods
.method constructor <init>(Lcom/tencent/sdkutil/AppUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/tencent/sdkutil/AppUtils$3;->this$0:Lcom/tencent/sdkutil/AppUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 781
    return-void
.end method
