.class public Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;
.super Ljava/lang/Object;
.source "SDKAuthorityController.java"


# static fields
.field private static volatile b:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 23
    const-string v0, "authority_other"

    const-string v1, "authority_serial_id"

    const-string v2, "authority_device_id"

    const-string v3, "authority_general_data"

    const-string v4, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    .line 27
    const/4 v5, 0x3

    iput v5, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    .line 24
    nop

    .line 1041
    new-instance v5, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    iput-object v5, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    .line 1043
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 1044
    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    .line 1046
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1047
    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    .line 1049
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1050
    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    .line 1053
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1054
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    .line 1057
    :cond_3
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_0
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;
    .locals 2

    .line 30
    sget-object v0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    .line 92
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    .line 98
    :cond_1
    goto :goto_1

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SDKAuthorityController"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    .line 103
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 107
    :cond_0
    const/4 v1, -0x1

    .line 108
    const-string v2, "authority_general_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->g()I

    move-result v1

    goto :goto_0

    .line 110
    :cond_1
    const-string v2, "authority_device_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->h()I

    move-result v1

    goto :goto_0

    .line 112
    :cond_2
    const-string v2, "authority_serial_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->f()I

    move-result v1

    .line 115
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_1

    .line 172
    nop

    .line 1193
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    .line 174
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_4

    .line 68
    const-string v0, "authority_general_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "authority_device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "authority_all_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "authority_serial_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "authority_other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 77
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    .line 80
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    .line 119
    nop

    .line 120
    nop

    .line 121
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 123
    nop

    .line 124
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    const/4 v3, 0x0

    .line 126
    :goto_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->i()I

    move-result v4

    .line 127
    if-nez v4, :cond_2

    .line 128
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 129
    :cond_2
    if-ne v4, v2, :cond_4

    .line 130
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 129
    :cond_4
    const/4 v4, 0x0

    .line 133
    :goto_1
    const-string v5, "authority_other"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 137
    :cond_6
    :goto_2
    const-string v5, "authority_device_id"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 138
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v5

    .line 1189
    iget v5, v5, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    .line 138
    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 139
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->X()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    goto :goto_3

    .line 142
    :cond_7
    if-eqz v3, :cond_8

    .line 143
    goto :goto_3

    .line 145
    :cond_8
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    nop

    :goto_4
    move v4, v1

    .line 151
    :cond_a
    return v4
.end method

.method public final b()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;
    .locals 2

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_0

    .line 84
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    .line 181
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const-string v1, "authority_dnt"

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .line 155
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 156
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 157
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 159
    :try_start_0
    const-string v3, "keyname"

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 160
    const-string v3, "client_status"

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 161
    const-string v3, "server_status"

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 162
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_1

    .line 163
    :catch_0
    move-exception v2

    .line 164
    invoke-virtual {v2}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 156
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 3

    .line 177
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final e()I
    .locals 1

    .line 189
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    return v0
.end method
