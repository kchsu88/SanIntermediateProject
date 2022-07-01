.class public Lccsansan/b/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZIZ)Lccsanandroid/app/NotificationChannel;
    .locals 3

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 3
    new-instance v0, Lccsanandroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p3}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4
    invoke-virtual {v0, p2}, Lccsanandroid/app/NotificationChannel;->enableLights(Z)V

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {v0, v1, v1}, Lccsanandroid/app/NotificationChannel;->setSound(Lccsanandroid/net/Uri;Lccsanandroid/media/AudioAttributes;)V

    :cond_0
    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lccsansan/b/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZIZ)Lccsanandroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method
