.class public final Lccsancom/mbridge/msdk/foundation/tools/m;
.super Lccsancom/mbridge/msdk/foundation/tools/d;
.source "SameDiTool.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static volatile e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:I

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const/4 v0, -0x1

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/m;->c:I

    .line 56
    sput v0, Lccsancom/mbridge/msdk/foundation/tools/m;->d:I

    .line 57
    const/4 v1, 0x0

    sput v1, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    .line 58
    const-string v2, ""

    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    .line 59
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->g:Ljava/lang/String;

    .line 60
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->h:Ljava/lang/String;

    .line 61
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->i:Ljava/lang/String;

    .line 62
    sput v1, Lccsancom/mbridge/msdk/foundation/tools/m;->j:I

    .line 63
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;

    .line 64
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->l:Ljava/lang/String;

    .line 65
    sput v0, Lccsancom/mbridge/msdk/foundation/tools/m;->m:I

    .line 66
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->n:Ljava/lang/String;

    .line 67
    sput v1, Lccsancom/mbridge/msdk/foundation/tools/m;->o:I

    .line 68
    sput-object v2, Lccsancom/mbridge/msdk/foundation/tools/m;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(I)I
    .locals 0

    .line 553
    packed-switch p0, :pswitch_data_0

    .line 579
    const/4 p0, 0x0

    return p0

    .line 577
    :pswitch_0
    const/4 p0, 0x5

    return p0

    .line 575
    :pswitch_1
    const/4 p0, 0x4

    return p0

    .line 571
    :pswitch_2
    const/4 p0, 0x3

    return p0

    .line 560
    :pswitch_3
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, ""

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lccsanandroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 533
    nop

    .line 534
    const-string v0, ""

    if-eqz p1, :cond_3

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    :try_start_0
    sget-boolean p1, Lccsancom/mbridge/msdk/foundation/same/a;->b:Z

    if-eqz p1, :cond_2

    .line 539
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/TelephonyManager;

    .line 540
    if-nez p0, :cond_1

    .line 541
    return-object v0

    .line 543
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 544
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 548
    :cond_2
    goto :goto_0

    .line 546
    :catchall_0
    move-exception p0

    .line 547
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SameDiTool"

    invoke-static {v1, p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    :goto_0
    return-object v0

    .line 535
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 675
    const-string v0, "SameDiTool"

    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/m;->n:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->n:Ljava/lang/String;

    return-object p0

    .line 678
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 679
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p1

    .line 680
    invoke-virtual {p1, p0}, Lccsanandroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->n:Ljava/lang/String;

    .line 681
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PKGSource:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lccsancom/mbridge/msdk/foundation/tools/m;->n:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_1
    goto :goto_0

    .line 683
    :catch_0
    move-exception p0

    .line 684
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    :goto_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 638
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->b:Ljava/lang/String;

    .line 639
    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->a:Ljava/lang/String;

    .line 640
    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    .line 51
    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 105
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Lccsanandroid/content/Context;)V
    .locals 1

    .line 75
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->f()Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->k(Lccsanandroid/content/Context;)Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->f(Lccsanandroid/content/Context;)Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->e(Lccsanandroid/content/Context;)I

    .line 79
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    .line 80
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    .line 81
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->c()Ljava/lang/String;

    .line 82
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    .line 84
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->e()Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/same/a;->c:Z

    .line 86
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/same/a;->b:Z

    .line 87
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->g(Lccsanandroid/content/Context;)I

    .line 88
    nop

    .line 89
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->t()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 94
    :goto_0
    nop

    .line 95
    :goto_1
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 112
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, ""

    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 119
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string p0, ""

    return-object p0

    .line 122
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    const-string v0, "en-US"

    if-nez p0, :cond_1

    .line 124
    return-object v0

    .line 127
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 131
    if-nez p0, :cond_3

    .line 132
    return-object v0

    .line 134
    :cond_3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 135
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;

    .line 139
    :goto_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 128
    :cond_5
    :goto_1
    return-object v0

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SameDiTool"

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;

    .line 145
    :cond_6
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Lccsanandroid/content/Context;)I
    .locals 2

    .line 149
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    .line 154
    if-nez p0, :cond_1

    .line 155
    return v0

    .line 157
    :cond_1
    iget p0, p0, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 159
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 160
    return v1

    .line 161
    :cond_2
    nop

    .line 162
    return v0

    .line 150
    :cond_3
    :goto_0
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 424
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->m(Lccsanandroid/content/Context;)Ljava/lang/String;

    .line 427
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Lccsanandroid/content/Context;)I
    .locals 2

    .line 169
    if-nez p0, :cond_0

    .line 170
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->j:I

    return p0

    .line 172
    :cond_0
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/m;->j:I

    if-nez v0, :cond_1

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 175
    iget p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return p0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 p0, -0x1

    return p0

    .line 182
    :cond_1
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 585
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_other"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, ""

    return-object v0

    .line 588
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/m$4;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/tools/m$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 600
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 601
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 605
    :cond_1
    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .line 610
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 611
    return-object v1

    .line 613
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->g:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->g()I

    move-result v0

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->g:Ljava/lang/String;

    .line 618
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 186
    if-nez p0, :cond_0

    .line 187
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->i:Ljava/lang/String;

    return-object p0

    .line 190
    :cond_0
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->i:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 192
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-object p0

    .line 198
    :cond_1
    nop

    .line 199
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->i:Ljava/lang/String;

    return-object p0

    .line 195
    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    const-string p0, ""

    return-object p0
.end method

.method public static g()I
    .locals 1

    .line 623
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public static g(Lccsanandroid/content/Context;)I
    .locals 1

    .line 204
    if-nez p0, :cond_0

    .line 205
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->o:I

    return p0

    .line 207
    :cond_0
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/m;->o:I

    if-nez v0, :cond_1

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SameDiTool"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    :goto_0
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->o:I

    return p0
.end method

.method public static h()I
    .locals 2

    .line 631
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    const/4 v0, -0x1

    return v0

    .line 634
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static h(Lccsanandroid/content/Context;)I
    .locals 4

    .line 218
    const-string v0, "width"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    return v2

    .line 221
    :cond_0
    if-nez p0, :cond_1

    .line 222
    return v2

    .line 225
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    .line 226
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->j(Lccsanandroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    .line 227
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget p0, v1, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p0

    .line 228
    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    return v2
.end method

.method public static i(Lccsanandroid/content/Context;)I
    .locals 4

    .line 235
    const-string v0, "height"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 236
    return v2

    .line 238
    :cond_0
    if-nez p0, :cond_1

    .line 239
    return v2

    .line 242
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    .line 243
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->j(Lccsanandroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    .line 244
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget p0, v1, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p0

    .line 245
    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    return v2
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 643
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 644
    return-object v1

    .line 646
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 647
    return-object v1

    .line 649
    :cond_1
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 653
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 654
    return-object v1

    .line 656
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 657
    return-object v1

    .line 659
    :cond_1
    return-object v0
.end method

.method public static j(Lccsanandroid/content/Context;)Ljava/util/HashMap;
    .locals 4

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    if-nez p0, :cond_0

    .line 254
    return-object v0

    .line 257
    :cond_0
    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/view/WindowManager;

    .line 258
    invoke-interface {p0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p0

    .line 259
    new-instance v1, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v1}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 261
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lccsanandroid/view/Display;->getRealMetrics(Lccsanandroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0, v1}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V

    .line 267
    :goto_0
    nop

    .line 268
    const-string p0, "height"

    iget v2, v1, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string p0, "width"

    iget v1, v1, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_1

    .line 271
    :catch_0
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :goto_1
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 711
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    const-string v0, ""

    return-object v0

    .line 714
    :cond_0
    sget-object v0, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 278
    if-nez p0, :cond_0

    .line 279
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->h:Ljava/lang/String;

    return-object p0

    .line 282
    :cond_0
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->h:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 284
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-object p0

    .line 290
    :cond_1
    nop

    .line 291
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->h:Ljava/lang/String;

    return-object p0

    .line 287
    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    const-string p0, ""

    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .locals 8

    .line 718
    const-string v0, "SameDiTool"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    const-string v0, ""

    return-object v0

    .line 721
    :cond_0
    const-string v1, "/proc/meminfo"

    .line 722
    nop

    .line 723
    const/4 v2, 0x0

    .line 724
    nop

    .line 725
    nop

    .line 727
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 728
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 729
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    .line 730
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 731
    if-eqz v3, :cond_1

    .line 732
    new-instance v5, Ljava/lang/Float;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v6, 0x49800000    # 1048576.0f

    div-float/2addr v3, v6

    invoke-direct {v5, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    double-to-int v0, v2

    move v2, v0

    .line 741
    :cond_1
    nop

    .line 742
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 746
    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 748
    :goto_0
    nop

    .line 749
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 753
    :cond_2
    :goto_1
    goto :goto_8

    .line 751
    :catch_1
    move-exception v0

    .line 752
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 754
    goto :goto_8

    .line 737
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 735
    :catch_2
    move-exception v3

    goto :goto_5

    .line 737
    :catchall_1
    move-exception v1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_2

    .line 735
    :catch_3
    move-exception v1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_5

    .line 737
    :catchall_2
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    .line 738
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 741
    if-eqz v4, :cond_3

    .line 742
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 744
    :catch_4
    move-exception v0

    goto :goto_4

    .line 746
    :cond_3
    :goto_3
    nop

    .line 748
    :goto_4
    if-eqz v1, :cond_2

    .line 749
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 735
    :catch_5
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    .line 736
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 741
    if-eqz v4, :cond_4

    .line 742
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    .line 744
    :catch_6
    move-exception v0

    goto :goto_7

    .line 746
    :cond_4
    :goto_6
    nop

    .line 748
    :goto_7
    if-eqz v1, :cond_2

    .line 749
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 755
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 740
    :catchall_3
    move-exception v0

    .line 741
    if-eqz v4, :cond_5

    .line 742
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    .line 744
    :catch_7
    move-exception v2

    goto :goto_a

    .line 746
    :cond_5
    :goto_9
    nop

    .line 748
    :goto_a
    if-eqz v1, :cond_6

    .line 749
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_b

    .line 751
    :catch_8
    move-exception v1

    .line 752
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 753
    :cond_6
    :goto_b
    nop

    .line 754
    :goto_c
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public static l(Lccsanandroid/content/Context;)V
    .locals 2

    .line 309
    if-nez p0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 314
    :goto_0
    if-eqz v0, :cond_2

    .line 315
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;)V

    goto :goto_1

    .line 317
    :cond_2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/m$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/m$1;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    goto :goto_2

    .line 324
    :catch_0
    move-exception p0

    .line 325
    const-string v0, "SameDiTool"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :goto_2
    return-void
.end method

.method public static m()Ljava/lang/String;
    .locals 10

    .line 823
    const-string v0, ""

    .line 825
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 827
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 828
    sub-long/2addr v2, v4

    .line 829
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->s()J

    move-result-wide v4

    .line 830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app_tki_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 831
    invoke-static {v1, v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 832
    :try_start_1
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 833
    new-instance v8, Lccsanorg/json/JSONObject;

    invoke-direct {v8}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    :try_start_2
    const-string v9, "1"

    invoke-virtual {v8, v9, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 836
    const-string v9, "2"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 837
    const-string v4, "3"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 838
    const-string v2, "4"

    invoke-virtual {v8, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 839
    const-string v2, "5"

    invoke-virtual {v8, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 842
    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 843
    :goto_0
    invoke-virtual {v8}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 848
    :try_start_4
    invoke-static {v1, v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v7, v0

    .line 852
    :cond_0
    goto :goto_2

    .line 850
    :catch_1
    move-exception v1

    move-object v0, v7

    goto :goto_1

    :catch_2
    move-exception v1

    .line 851
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v0

    .line 853
    :goto_2
    return-object v7
.end method

.method public static m(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 331
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 332
    return-object v1

    .line 334
    :cond_0
    nop

    .line 1414
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "SameDiTool"

    if-eqz v0, :cond_1

    .line 1416
    :try_start_0
    const-string v0, "mbridge_ua"

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    goto :goto_0

    .line 1417
    :catchall_0
    move-exception v0

    .line 1418
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 337
    :goto_1
    if-eqz v0, :cond_6

    .line 338
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v0, :cond_5

    .line 340
    :try_start_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 341
    invoke-static {p0}, Lccsanandroid/webkit/WebSettings;->getDefaultUserAgent(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    :cond_3
    goto :goto_2

    .line 343
    :catchall_1
    move-exception v0

    .line 346
    :goto_2
    :try_start_3
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_7

    .line 348
    :try_start_4
    const-class v0, Lccsanandroid/webkit/WebSettings;

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/content/Context;

    aput-object v7, v6, v5

    const-class v7, Lccsanandroid/webkit/WebView;

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 350
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/webkit/WebSettings;

    .line 351
    invoke-virtual {v1}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    .line 352
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 355
    goto :goto_3

    .line 353
    :catchall_2
    move-exception v0

    .line 354
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    :goto_3
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_4

    .line 358
    :try_start_6
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p0}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 361
    goto :goto_4

    .line 359
    :catchall_3
    move-exception v0

    .line 360
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 363
    :cond_4
    :goto_4
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 364
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->r()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    .line 369
    :cond_5
    :try_start_8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/m$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/m$2;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    .line 390
    :catch_0
    move-exception v0

    .line 391
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    :goto_5
    goto :goto_6

    .line 395
    :cond_6
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->r()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 399
    :cond_7
    :goto_6
    goto :goto_7

    .line 397
    :catchall_4
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    :goto_7
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->s(Lccsanandroid/content/Context;)V

    .line 401
    sget-object p0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static n()I
    .locals 11

    .line 858
    const-string v0, "FreeRamSize"

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    const/4 v0, 0x0

    return v0

    .line 861
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 862
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 864
    sub-long v4, v6, v4

    const-wide/32 v8, 0x1b7740

    cmp-long v10, v4, v8

    if-gtz v10, :cond_1

    sget v4, Lccsancom/mbridge/msdk/foundation/tools/m;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1875
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    .line 1876
    if-eqz v4, :cond_2

    .line 1877
    const-string v2, "activity"

    invoke-virtual {v4, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/app/ActivityManager;

    .line 1878
    new-instance v3, Lccsanandroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Lccsanandroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1879
    invoke-virtual {v2, v3}, Lccsanandroid/app/ActivityManager;->getMemoryInfo(Lccsanandroid/app/ActivityManager$MemoryInfo;)V

    .line 1880
    iget-wide v2, v3, Lccsanandroid/app/ActivityManager$MemoryInfo;->availMem:J

    goto :goto_0

    .line 1882
    :cond_2
    nop

    .line 865
    :goto_0
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sput v2, Lccsancom/mbridge/msdk/foundation/tools/m;->d:I

    .line 866
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_3
    goto :goto_1

    .line 868
    :catchall_0
    move-exception v0

    .line 869
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    :goto_1
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/m;->d:I

    return v0
.end method

.method public static n(Lccsanandroid/content/Context;)I
    .locals 3

    .line 487
    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 488
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 491
    :cond_0
    if-nez v0, :cond_1

    .line 492
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 494
    :cond_1
    sget v1, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    if-eqz v1, :cond_2

    .line 495
    nop

    .line 1442
    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/m$3;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/m$3;-><init>(Lccsanandroid/content/Context;)V

    .line 1481
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 496
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 498
    :cond_2
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/net/ConnectivityManager;

    .line 499
    if-nez v1, :cond_3

    .line 500
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 502
    :cond_3
    sget-boolean v2, Lccsancom/mbridge/msdk/foundation/same/a;->b:Z

    if-eqz v2, :cond_7

    .line 504
    invoke-virtual {v1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v1

    .line 505
    if-nez v1, :cond_4

    .line 506
    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    .line 507
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 509
    :cond_4
    invoke-virtual {v1}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 510
    const/16 v0, 0x9

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    .line 511
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 513
    :cond_5
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/telephony/TelephonyManager;

    .line 514
    if-nez v0, :cond_6

    .line 515
    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    .line 516
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 518
    :cond_6
    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    .line 519
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(I)I

    move-result p0

    return p0

    .line 521
    :cond_7
    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    nop

    .line 528
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    sput p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    .line 526
    sget p0, Lccsancom/mbridge/msdk/foundation/tools/m;->e:I

    return p0
.end method

.method public static o()I
    .locals 9

    .line 899
    const-string v0, "TotalRamSize"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    const/4 v0, 0x0

    return v0

    .line 902
    :cond_0
    sget v1, Lccsancom/mbridge/msdk/foundation/tools/m;->c:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 904
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 905
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 907
    sub-long v2, v4, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/m;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 908
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->s()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sput v2, Lccsancom/mbridge/msdk/foundation/tools/m;->c:I

    .line 909
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_2
    goto :goto_0

    .line 911
    :catchall_0
    move-exception v0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 915
    :cond_3
    :goto_0
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/m;->c:I

    return v0
.end method

.method public static o(Lccsanandroid/content/Context;)Z
    .locals 8

    .line 690
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 691
    return v0

    .line 694
    :cond_0
    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/view/WindowManager;

    .line 695
    invoke-interface {p0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p0

    .line 696
    new-instance v1, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v1}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 697
    invoke-virtual {p0, v1}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V

    .line 698
    iget p0, v1, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget v2, v1, Lccsanandroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v2

    float-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 699
    iget p0, v1, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    iget v1, v1, Lccsanandroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v1

    float-to-double v6, p0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 700
    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    cmpl-double p0, v1, v3

    if-ltz p0, :cond_1

    .line 702
    const/4 p0, 0x1

    return p0

    .line 706
    :cond_1
    goto :goto_0

    .line 704
    :catch_0
    move-exception p0

    .line 705
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 707
    :goto_0
    return v0
.end method

.method public static p()I
    .locals 1

    .line 936
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/m;->m:I

    return v0
.end method

.method public static p(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 759
    const-string v0, "SameDiTool"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 760
    return-object v2

    .line 762
    :cond_0
    if-nez p0, :cond_1

    .line 763
    return-object v2

    .line 766
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object p0

    .line 767
    const-string v1, "time_12_24"

    invoke-static {p0, v1}, Lccsanandroid/provider/Settings$System;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    return-object p0

    .line 772
    :catchall_0
    move-exception p0

    .line 773
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 770
    :catch_0
    move-exception p0

    .line 771
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 774
    nop

    .line 775
    :goto_0
    return-object v2
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static q(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 779
    const-string v0, "SameDiTool"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 780
    return-object v2

    .line 783
    :cond_0
    if-nez p0, :cond_1

    .line 784
    return-object v2

    .line 786
    :cond_1
    const-string v1, "/proc/meminfo"

    .line 789
    nop

    .line 790
    nop

    .line 791
    nop

    .line 793
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 794
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 795
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 796
    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 797
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    mul-long v5, v5, v7

    .line 798
    invoke-static {p0, v5, v6}, Lccsanandroid/text/format/Formatter;->formatFileSize(Lccsanandroid/content/Context;J)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    nop

    .line 806
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 810
    goto :goto_0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    :goto_0
    nop

    .line 813
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 817
    goto :goto_1

    .line 815
    :catch_1
    move-exception v1

    .line 816
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 798
    :goto_1
    return-object p0

    .line 801
    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_2

    .line 799
    :catch_2
    move-exception p0

    move-object v3, v1

    goto :goto_5

    .line 801
    :catchall_1
    move-exception p0

    goto :goto_2

    .line 799
    :catch_3
    move-exception p0

    goto :goto_5

    .line 801
    :catchall_2
    move-exception p0

    move-object v4, v3

    .line 802
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 805
    if-eqz v3, :cond_2

    .line 806
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 808
    :catch_4
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 810
    :cond_2
    :goto_3
    nop

    .line 812
    :goto_4
    if-eqz v4, :cond_4

    .line 813
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    .line 799
    :catch_5
    move-exception p0

    move-object v4, v3

    .line 800
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 805
    if-eqz v3, :cond_3

    .line 806
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    .line 808
    :catch_6
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 810
    :cond_3
    :goto_6
    nop

    .line 812
    :goto_7
    if-eqz v4, :cond_4

    .line 813
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_8

    .line 815
    :catch_7
    move-exception p0

    .line 816
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    goto :goto_9

    .line 817
    :cond_4
    :goto_8
    nop

    .line 819
    :goto_9
    return-object v2

    .line 804
    :catchall_3
    move-exception p0

    .line 805
    if-eqz v3, :cond_5

    .line 806
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_a

    .line 808
    :catch_8
    move-exception v1

    .line 809
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 810
    :cond_5
    :goto_a
    nop

    .line 812
    :goto_b
    if-eqz v4, :cond_6

    .line 813
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_c

    .line 815
    :catch_9
    move-exception v1

    .line 816
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 817
    :cond_6
    :goto_c
    nop

    .line 818
    :goto_d
    throw p0
.end method

.method private static r()V
    .locals 4

    .line 431
    sget-object v0, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 432
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Build/) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_0
    const-string v0, "Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    .line 439
    :goto_0
    return-void
.end method

.method static synthetic r(Lccsanandroid/content/Context;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/m;->s(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static s()J
    .locals 3

    .line 886
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 887
    if-eqz v0, :cond_0

    .line 888
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/ActivityManager;

    .line 889
    new-instance v1, Lccsanandroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Lccsanandroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 890
    invoke-virtual {v0, v1}, Lccsanandroid/app/ActivityManager;->getMemoryInfo(Lccsanandroid/app/ActivityManager$MemoryInfo;)V

    .line 891
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 892
    iget-wide v0, v1, Lccsanandroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0

    .line 895
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static s(Lccsanandroid/content/Context;)V
    .locals 2

    .line 406
    :try_start_0
    const-string v0, "mbridge_ua"

    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/m;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    goto :goto_0

    .line 407
    :catchall_0
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SameDiTool"

    invoke-static {v1, v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    :goto_0
    return-void
.end method

.method private static t()Ljava/lang/String;
    .locals 7

    .line 940
    const-string v0, "SameDiTool"

    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/m;->p:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->p:Ljava/lang/String;

    return-object v0

    .line 943
    :cond_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 944
    const/4 v2, 0x0

    .line 946
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.huawei.system.BuildEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 947
    const-string v5, "getOsBrand"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    move-object v2, v4

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v4

    .line 949
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_0
    :try_start_1
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "harmony"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 954
    const-string v4, "osType"

    invoke-virtual {v1, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 957
    :try_start_2
    const-string v2, "ohos.system.version.SystemVersion"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 958
    const-string v4, "getVersion"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 959
    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 962
    goto :goto_1

    .line 960
    :catchall_1
    move-exception v2

    .line 961
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 966
    :goto_1
    :try_start_4
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pure_mode_state"

    const/4 v4, -0x1

    .line 965
    invoke-static {v2, v3, v4}, Lccsanandroid/provider/Settings$Secure;->getInt(Lccsanandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 967
    const-string v3, "pure_state"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 970
    goto :goto_2

    .line 968
    :catchall_2
    move-exception v2

    .line 969
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_2
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 974
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    :cond_1
    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/m;->p:Ljava/lang/String;

    .line 977
    goto :goto_3

    .line 978
    :cond_2
    const-string v1, "android"

    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/m;->p:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 982
    :goto_3
    goto :goto_4

    .line 980
    :catchall_3
    move-exception v1

    .line 981
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :goto_4
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/m;->p:Ljava/lang/String;

    return-object v0
.end method
