.class public Lccsanenhance/g/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 3
    invoke-static {p0}, Lccsanenhance/g/c;->c(Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_1

    iget v0, p0, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/ApplicationInfo;->loadIcon(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/provider/Settings;->canDrawOverlays(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static a(Lccsanandroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 1
    iget p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 9
    invoke-static {p0}, Lccsanenhance/g/c;->c(Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    iget-object v1, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 14
    iget-object p0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 16
    :cond_1
    iget-object v2, v1, Lccsanandroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 17
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_2
    :try_start_0
    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v1, :cond_3

    .line 21
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Lccsanandroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Lccsanandroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 24
    iget-object v1, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 29
    :cond_3
    iget-object p0, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_4

    return-object p0

    .line 32
    :cond_4
    iget-object p0, v0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageInfo;

    .line 6
    iget-object v3, v2, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    .line 7
    invoke-static {v3}, Lccsanenhance/g/c;->a(Lccsanandroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    invoke-static {}, Lccsanenhance/g/c;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageInfo;

    .line 3
    iget-object v2, v1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    return v0
.end method

.method public static e()Z
    .locals 2

    .line 1
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 5

    .line 1
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Lccsanandroid/provider/Settings$Secure;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 5
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 7
    aget-object v3, v0, v1

    invoke-static {v3}, Lccsanandroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Lccsanandroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static g()Z
    .locals 5

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AppOpsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "android:get_usage_stats"

    .line 7
    :try_start_1
    invoke-static {}, Lccsanandroid/os/Process;->myUid()I

    move-result v3

    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lccsanandroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 9
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 18
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v1
.end method
