.class public final Lccsancom/mbridge/msdk/foundation/same/net/g/d;
.super Ljava/lang/Object;
.source "RequestUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/g/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Z

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "RequestUrlUtil"

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->p:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->q:Z

    .line 26
    const-string v1, "https://{}hb.rayjump.com"

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->r:Ljava/lang/String;

    .line 28
    const-string v1, "https://analytics.rayjump.com"

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    .line 29
    const-string v1, "https://net.rayjump.com"

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    .line 30
    const-string v1, "https://configure.rayjump.com"

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    .line 32
    const-string v2, "/bid"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->s:Ljava/lang/String;

    .line 33
    const-string v2, "/load"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->t:Ljava/lang/String;

    .line 34
    const-string v2, "/openapi/ad/v3"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->u:Ljava/lang/String;

    .line 35
    const-string v2, "/openapi/ad/v4"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->v:Ljava/lang/String;

    .line 36
    const-string v2, "/openapi/ad/v5"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->w:Ljava/lang/String;

    .line 37
    const-string v2, "/setting"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->x:Ljava/lang/String;

    .line 38
    const-string v2, "/sdk/customid"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->y:Ljava/lang/String;

    .line 39
    const-string v2, "/rewardsetting"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->z:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->d:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->g:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->j:Ljava/lang/String;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->k:Ljava/lang/String;

    .line 52
    const-string v2, "https://d1tru86qrby720.cloudfront.net/hostsetting"

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->l:Ljava/lang/String;

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->m:I

    .line 55
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->n:Z

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v1, "https://policy.rayjump.com"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "https://lazy.rayjump.com"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "https://check.rayjump.com"

    aput-object v1, v4, v0

    .line 57
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/g/d$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 161
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 p1, 0x0

    return p1

    .line 163
    :cond_0
    nop

    .line 164
    const-string v0, "(https|http)://[-A-Za-z0-9{}+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public static c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;
    .locals 1

    .line 97
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d$a;->a()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 102
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    array-length v2, v1

    if-le v2, v0, :cond_0

    .line 105
    aget-object v1, v1, v0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 110
    :cond_0
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestUrlUtil"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1097
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d$a;->a()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p1

    .line 112
    nop

    .line 2086
    iget-boolean p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->q:Z

    .line 112
    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 116
    const-string v0, ""

    const-string v1, "{}"

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 4

    .line 66
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->m:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-gt v2, v1, :cond_0

    .line 67
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->m:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e()V

    .line 69
    return v3

    .line 71
    :cond_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->n:Z

    if-eqz v1, :cond_1

    .line 72
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    return v0

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestUrlUtil"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->q:Z

    return v0
.end method

.method public final d()V
    .locals 3

    .line 128
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 131
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->c(I)Z

    move-result v1

    .line 2090
    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->q:Z

    .line 132
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->aa()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->aa()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 133
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->aa()Ljava/util/HashMap;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 135
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    .line 137
    nop

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    .line 2177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->g:Ljava/lang/String;

    .line 2178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    .line 140
    :cond_0
    const-string v1, "hb"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->r:Ljava/lang/String;

    .line 142
    nop

    .line 3171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->d:Ljava/lang/String;

    .line 3172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    .line 145
    :cond_1
    const-string v1, "lg"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m;->a()Lccsancom/mbridge/msdk/foundation/same/net/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/m;->a(Ljava/lang/String;)V

    .line 158
    :cond_3
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->j:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->k:Ljava/lang/String;

    .line 185
    return-void
.end method
