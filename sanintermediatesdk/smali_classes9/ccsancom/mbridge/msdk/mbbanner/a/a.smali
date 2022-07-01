.class public final Lccsancom/mbridge/msdk/mbbanner/a/a;
.super Ljava/lang/Object;
.source "BannerController.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lccsancom/mbridge/msdk/out/MBridgeIds;

.field private e:Z

.field private f:I

.field private g:Lccsancom/mbridge/msdk/out/MBBannerView;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lccsancom/mbridge/msdk/out/BannerAdListener;

.field private m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field private n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

.field private o:Lccsancom/mbridge/msdk/b/d;

.field private p:Lccsancom/mbridge/msdk/b/c;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

.field private w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "BannerController"

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/out/MBBannerView;Lccsancom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->k:I

    .line 51
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/a/a$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/a/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->v:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    .line 122
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/a/a$2;-><init>(Lccsancom/mbridge/msdk/mbbanner/a/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    .line 169
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->g:Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 170
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/out/BannerSize;->getHeight()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    .line 172
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/out/BannerSize;->getWidth()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    .line 174
    :cond_0
    iput-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    .line 176
    new-instance p1, Lccsancom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {p1, p3, p4}, Lccsancom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->d:Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 177
    nop

    .line 1198
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object p2

    .line 1219
    iget-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->p:Lccsancom/mbridge/msdk/b/c;

    if-nez p3, :cond_1

    .line 1220
    new-instance p3, Lccsancom/mbridge/msdk/b/c;

    invoke-direct {p3}, Lccsancom/mbridge/msdk/b/c;-><init>()V

    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->p:Lccsancom/mbridge/msdk/b/c;

    .line 1222
    :cond_1
    iget-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->p:Lccsancom/mbridge/msdk/b/c;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p4

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {p3, p4, p1, p2, v0}, Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->f()V

    .line 178
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/a/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 0

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->l:Lccsancom/mbridge/msdk/out/BannerAdListener;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/a/a;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/a/a;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->u:Z

    return p1
.end method

.method private b(I)I
    .locals 2

    .line 226
    const/16 v0, 0xb4

    const/16 v1, 0xa

    if-lez p1, :cond_1

    .line 227
    if-ge p1, v1, :cond_0

    .line 228
    const/16 p1, 0xa

    goto :goto_0

    .line 229
    :cond_0
    if-le p1, v0, :cond_1

    .line 230
    const/16 p1, 0xb4

    .line 233
    :cond_1
    :goto_0
    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->d:Lccsancom/mbridge/msdk/out/MBridgeIds;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->l:Lccsancom/mbridge/msdk/out/BannerAdListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->d:Lccsancom/mbridge/msdk/out/MBridgeIds;

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c()V

    .line 310
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/a/a;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->t:Z

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/mbbanner/a/a;)I
    .locals 0

    .line 27
    iget p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    return p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/mbbanner/a/a;)I
    .locals 0

    .line 27
    iget p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    return p0
.end method

.method private f()V
    .locals 3

    .line 203
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->o:Lccsancom/mbridge/msdk/b/d;

    .line 204
    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->o:Lccsancom/mbridge/msdk/b/d;

    .line 207
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->o:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(I)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    .line 210
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->f:I

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->o:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->e:Z

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Z)V

    .line 216
    :cond_3
    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/mbbanner/a/a;)I
    .locals 0

    .line 27
    iget p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    return p0
.end method

.method private g()V
    .locals 8

    .line 279
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->t:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    nop

    .line 1302
    nop

    .line 283
    nop

    .line 284
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->g:Lccsancom/mbridge/msdk/out/MBBannerView;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->v:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->e:Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->o:Lccsancom/mbridge/msdk/b/d;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;-><init>(Lccsancom/mbridge/msdk/out/MBBannerView;Lccsancom/mbridge/msdk/mbbanner/common/b/c;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/b/d;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    .line 288
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->q:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Z)V

    .line 289
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->r:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c(Z)V

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->e:Z

    iget v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->f:I

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(ZI)V

    .line 291
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    goto :goto_0

    .line 293
    :cond_2
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Ljava/lang/String;)V

    .line 298
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->t:Z

    .line 299
    return-void

    .line 280
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/mbbanner/common/b/b;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    return-object p0
.end method

.method private h()V
    .locals 13

    .line 336
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->g:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_1

    .line 337
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->r:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->u:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/z;->a(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    new-instance v5, Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-direct {v5, v0, v6}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v9, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v10, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 342
    :goto_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->q:Z

    if-nez v0, :cond_1

    .line 343
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 344
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Ljava/lang/String;)V

    .line 347
    :cond_1
    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 350
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->h()V

    .line 351
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    if-eqz v0, :cond_0

    .line 352
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->q:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Z)V

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->r:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBBannerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->g:Lccsancom/mbridge/msdk/out/MBBannerView;

    return-object p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/mbbanner/a/a;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->g()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->m:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(I)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->k:I

    .line 189
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    .line 190
    return-void
.end method

.method public final a(IIII)V
    .locals 1

    .line 358
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(IIII)V

    .line 361
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/BannerAdListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->l:Lccsancom/mbridge/msdk/out/BannerAdListener;

    .line 253
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/BannerSize;)V
    .locals 1

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/BannerSize;->getHeight()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    .line 183
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/BannerSize;->getWidth()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    .line 185
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 237
    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v6, Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {v6, v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    .line 244
    invoke-virtual {v6, p1}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->a(Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    invoke-virtual {v6, p1}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->b(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual {p1, v0, v1, v6, v2}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 247
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 249
    return-void

    .line 238
    :cond_1
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->l:Lccsancom/mbridge/msdk/out/BannerAdListener;

    if-eqz p1, :cond_2

    .line 239
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->d:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v1, "banner load failed because params are exception"

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 241
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->e:Z

    .line 194
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->f:I

    .line 195
    return-void
.end method

.method public final b()V
    .locals 8

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->s:Z

    .line 257
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->l:Lccsancom/mbridge/msdk/out/BannerAdListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->l:Lccsancom/mbridge/msdk/out/BannerAdListener;

    .line 261
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    if-eqz v0, :cond_1

    .line 262
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    .line 264
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->v:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_2

    .line 265
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->v:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    .line 267
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->g:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_3

    .line 268
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->g:Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 270
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 271
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b()V

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->n:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    if-eqz v0, :cond_4

    .line 274
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a()V

    .line 276
    :cond_4
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->q:Z

    .line 326
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->i()V

    .line 327
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->g()V

    .line 328
    return-void
.end method

.method public final c()V
    .locals 5

    .line 313
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->s:Z

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->h()V

    .line 317
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->f()V

    .line 318
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    .line 320
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->b(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual {v1, v2, v3, v0, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 322
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->r:Z

    .line 332
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->i()V

    .line 333
    return-void
.end method

.method public final d()V
    .locals 6

    .line 364
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    new-instance v4, Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v4, v1, v5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    const/4 v1, 0x4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 366
    return-void
.end method

.method public final e()V
    .locals 6

    .line 369
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->b:Ljava/lang/String;

    new-instance v4, Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->i:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->h:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->j:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v4, v1, v5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/a/a;->w:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 371
    return-void
.end method
