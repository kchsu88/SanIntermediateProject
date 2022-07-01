.class public Lccsansan/bq/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bq/deleteDownItem$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsanandroid/widget/Toast;


# direct methods
.method public static addDownloadListener(II)V
    .locals 1

    .line 11
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private static addDownloadListener(Lccsanandroid/widget/Toast;)V
    .locals 4

    .line 12
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    return-void

    .line 15
    :cond_0
    :try_start_0
    const-class v0, Lccsanandroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHandler"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    .line 22
    new-instance v1, Lccsansan/bq/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bq/deleteDownItem$IncentiveDownloadUtils;-><init>(Lccsanandroid/os/Handler;)V

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safe toast hook exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SafeToast"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;I)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lccsansan/bq/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lccsanandroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget-object p0, Lccsansan/bq/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/widget/Toast;

    invoke-virtual {p0, p1}, Lccsanandroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lccsanandroid/widget/Toast;->makeText(Lccsanandroid/content/Context;Ljava/lang/CharSequence;I)Lccsanandroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lccsansan/bq/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/widget/Toast;

    .line 6
    invoke-static {p0}, Lccsansan/bq/deleteDownItem;->addDownloadListener(Lccsanandroid/widget/Toast;)V

    .line 8
    :goto_0
    sget-object p0, Lccsansan/bq/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/widget/Toast;

    invoke-virtual {p0}, Lccsanandroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "safe show toast exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SafeToast"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
