.class Lcom/miantan/myoface/GuidePageActivity$1;
.super Ljava/lang/Object;
.source "GuidePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/GuidePageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/GuidePageActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/GuidePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/GuidePageActivity$1;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$1;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    const-class v2, Lcom/miantan/myoface/StartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$1;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    invoke-virtual {v1, v0}, Lcom/miantan/myoface/GuidePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$1;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    invoke-virtual {v1}, Lcom/miantan/myoface/GuidePageActivity;->finish()V

    .line 72
    return-void
.end method
