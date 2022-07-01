.class final Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;
.super Ljava/lang/Object;
.source "MBBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 75
    const-string v0, "MBBaseActivity"

    .line 76
    nop

    .line 78
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    .line 79
    iget-object v1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/View;->getRootWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v1

    .line 81
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 83
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_5

    .line 84
    invoke-virtual {v1}, Lccsanandroid/view/WindowInsets;->getDisplayCutout()Lccsanandroid/view/DisplayCutout;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {v1}, Lccsanandroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    .line 88
    invoke-virtual {v1}, Lccsanandroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    .line 89
    invoke-virtual {v1}, Lccsanandroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v6

    .line 90
    invoke-virtual {v1}, Lccsanandroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NOTCH Left:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Bottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v7, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v7}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v7

    .line 96
    iget-object v8, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v8}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v8

    if-ne v8, v2, :cond_4

    .line 97
    iget-object v8, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-nez v7, :cond_0

    const/4 v9, 0x3

    goto :goto_0

    :cond_0
    if-ne v7, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    if-ne v7, v9, :cond_2

    const/4 v9, 0x4

    goto :goto_0

    :cond_2
    if-ne v7, v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, -0x1

    :goto_0
    invoke-static {v8, v9}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;I)I

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v9}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_4
    packed-switch v7, :pswitch_data_0

    move v7, v1

    const/4 v3, -0x1

    goto :goto_1

    .line 112
    :pswitch_0
    const/16 v2, 0x10e

    move v7, v1

    const/16 v3, 0x10e

    goto :goto_1

    .line 109
    :pswitch_1
    const/16 v2, 0xb4

    .line 110
    move v7, v1

    const/16 v3, 0xb4

    goto :goto_1

    .line 106
    :pswitch_2
    const/16 v2, 0x5a

    .line 107
    move v7, v1

    const/16 v3, 0x5a

    goto :goto_1

    .line 103
    :pswitch_3
    nop

    .line 104
    move v7, v1

    goto :goto_1

    .line 119
    :cond_5
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->setTopControllerPadding(IIIII)V

    .line 121
    iget-object v1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->c(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)Lccsanandroid/view/OrientationEventListener;

    move-result-object v1

    if-nez v1, :cond_6

    .line 122
    iget-object v1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {v1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->d(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_6
    goto :goto_2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
