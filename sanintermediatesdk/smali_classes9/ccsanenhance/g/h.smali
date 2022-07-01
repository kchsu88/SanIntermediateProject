.class public Lccsanenhance/g/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lccsanandroid/content/Context;


# direct methods
.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object p0

    const-string p3, "android"

    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p3

    sput-object p3, Lccsanenhance/g/h;->a:Lccsanandroid/content/Context;

    .line 9
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "drawable"

    invoke-static {p0, v0}, Lccsanenhance/g/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lccsanenhance/g/h;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Z)I
    .locals 2

    .line 2
    sget-object v0, Lccsanenhance/g/h;->a:Lccsanandroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, p0, v1, p1}, Lccsanenhance/g/h;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanenhance/g/h;->a(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Z)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    const-string v1, "mipmap"

    invoke-static {v0, p0, v1, p1}, Lccsanenhance/g/h;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "layout"

    invoke-static {p0, v0}, Lccsanenhance/g/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
