.class Lcom/miantan/myoface/LoadingPageActivity$1;
.super Ljava/lang/Object;
.source "LoadingPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/LoadingPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/LoadingPageActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/LoadingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 47
    const-wide/16 v10, 0x4b0

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 53
    const-wide/16 v10, 0x320

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 57
    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    const-string v11, "config"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/miantan/myoface/LoadingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 58
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v10, "NeverEnteredEditorActivity"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 59
    .local v4, mIsNeverEnteredEditorActivity:I
    if-ne v4, v13, :cond_0

    .line 61
    const/4 v10, 0x1

    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity:Z

    .line 68
    :goto_0
    const-string v10, "NeverEnteredEditorActivity2"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 69
    .local v5, mIsNeverEnteredEditorActivity2:I
    if-ne v5, v13, :cond_1

    .line 71
    const/4 v10, 0x1

    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity2:Z

    .line 79
    :goto_1
    const-string v10, "SwitchSoundOn"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 80
    .local v7, mIsSoundOn:I
    invoke-static {v7}, Lcom/miantan/myoface/BasicData;->setSoundSwitch(I)V

    .line 82
    const-string v10, "SwitchShakeOn"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 83
    .local v6, mIsShakeOn:I
    invoke-static {v6}, Lcom/miantan/myoface/BasicData;->setShakeSwitch(I)V

    .line 88
    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    invoke-virtual {v10}, Lcom/miantan/myoface/LoadingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.miantan.myoface"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget v3, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 89
    .local v3, mCurVersionCode:I
    const-string v10, "AppVersionCode"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 90
    .local v8, mPreVersionCode:I
    if-ge v8, v3, :cond_2

    .line 92
    const/4 v10, 0x1

    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isAppNewVersion:Z

    .line 101
    :goto_2
    sget-boolean v10, Lcom/miantan/myoface/BasicData;->isAppNewVersion:Z

    if-eqz v10, :cond_3

    .line 103
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 104
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "AppVersionCode"

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    const/4 v10, 0x0

    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isAppNewVersion:Z

    .line 109
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    const-class v11, Lcom/miantan/myoface/GuidePageActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v2, it:Landroid/content/Intent;
    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    invoke-virtual {v10, v2}, Lcom/miantan/myoface/LoadingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    invoke-virtual {v10}, Lcom/miantan/myoface/LoadingPageActivity;->finish()V

    .line 130
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #mCurVersionCode:I
    .end local v4           #mIsNeverEnteredEditorActivity:I
    .end local v5           #mIsNeverEnteredEditorActivity2:I
    .end local v6           #mIsShakeOn:I
    .end local v7           #mIsSoundOn:I
    .end local v8           #mPreVersionCode:I
    .end local v9           #preferences:Landroid/content/SharedPreferences;
    :goto_3
    return-void

    .line 65
    .restart local v4       #mIsNeverEnteredEditorActivity:I
    .restart local v9       #preferences:Landroid/content/SharedPreferences;
    :cond_0
    const/4 v10, 0x0

    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    .end local v4           #mIsNeverEnteredEditorActivity:I
    .end local v9           #preferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 75
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v4       #mIsNeverEnteredEditorActivity:I
    .restart local v5       #mIsNeverEnteredEditorActivity2:I
    .restart local v9       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v10, 0x0

    :try_start_1
    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isNeverEnterEditorActivity2:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 125
    .end local v4           #mIsNeverEnteredEditorActivity:I
    .end local v5           #mIsNeverEnteredEditorActivity2:I
    .end local v9           #preferences:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #mCurVersionCode:I
    .restart local v4       #mIsNeverEnteredEditorActivity:I
    .restart local v5       #mIsNeverEnteredEditorActivity2:I
    .restart local v6       #mIsShakeOn:I
    .restart local v7       #mIsSoundOn:I
    .restart local v8       #mPreVersionCode:I
    .restart local v9       #preferences:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v10, 0x0

    :try_start_2
    sput-boolean v10, Lcom/miantan/myoface/BasicData;->isAppNewVersion:Z

    goto :goto_2

    .line 116
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    const-class v11, Lcom/miantan/myoface/StartActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .restart local v2       #it:Landroid/content/Intent;
    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    invoke-virtual {v10, v2}, Lcom/miantan/myoface/LoadingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v10, p0, Lcom/miantan/myoface/LoadingPageActivity$1;->this$0:Lcom/miantan/myoface/LoadingPageActivity;

    invoke-virtual {v10}, Lcom/miantan/myoface/LoadingPageActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method
