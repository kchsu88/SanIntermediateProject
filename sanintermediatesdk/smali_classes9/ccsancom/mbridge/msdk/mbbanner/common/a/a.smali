.class public final Lccsancom/mbridge/msdk/mbbanner/common/a/a;
.super Ljava/lang/Object;
.source "BannerReportData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 1

    .line 34
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbbanner/common/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 115
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->h:I

    .line 116
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public final a(Z)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 26
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->i:Z

    .line 27
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 52
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&"

    if-nez v1, :cond_0

    .line 123
    const-string v1, "unit_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const-string v1, "cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    const-string v1, "rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    const-string v1, "rid_n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 135
    const-string v1, "creative_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->g:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 138
    const-string v1, "reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_5
    iget v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->h:I

    if-eqz v1, :cond_6

    .line 141
    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_6
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->i:Z

    if-eqz v1, :cond_7

    .line 144
    const-string v1, "hb=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_7
    const-string v1, "network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 148
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->c:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 79
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->e:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 88
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->d:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 97
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->f:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lccsancom/mbridge/msdk/mbbanner/common/a/a;
    .locals 0

    .line 106
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/a/a;->g:Ljava/lang/String;

    .line 107
    return-object p0
.end method
