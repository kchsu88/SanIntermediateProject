.class public Lccsancom/applovin/impl/sdk/d/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lccsancom/applovin/impl/sdk/d/f;

.field public static final b:Lccsancom/applovin/impl/sdk/d/f;

.field public static final c:Lccsancom/applovin/impl/sdk/d/f;

.field public static final d:Lccsancom/applovin/impl/sdk/d/f;

.field public static final e:Lccsancom/applovin/impl/sdk/d/f;

.field public static final f:Lccsancom/applovin/impl/sdk/d/f;

.field public static final g:Lccsancom/applovin/impl/sdk/d/f;

.field public static final h:Lccsancom/applovin/impl/sdk/d/f;

.field public static final i:Lccsancom/applovin/impl/sdk/d/f;

.field public static final j:Lccsancom/applovin/impl/sdk/d/f;

.field public static final k:Lccsancom/applovin/impl/sdk/d/f;

.field public static final l:Lccsancom/applovin/impl/sdk/d/f;

.field public static final m:Lccsancom/applovin/impl/sdk/d/f;

.field public static final n:Lccsancom/applovin/impl/sdk/d/f;

.field public static final o:Lccsancom/applovin/impl/sdk/d/f;

.field public static final p:Lccsancom/applovin/impl/sdk/d/f;

.field public static final q:Lccsancom/applovin/impl/sdk/d/f;

.field public static final r:Lccsancom/applovin/impl/sdk/d/f;

.field public static final s:Lccsancom/applovin/impl/sdk/d/f;

.field private static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/applovin/impl/sdk/d/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->t:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->v:Ljava/util/Set;

    const-string v0, "ad_req"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->a:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "ad_imp"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->b:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "ad_session_start"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->c:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "ad_imp_session"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->d:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "cached_files_expired"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->e:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "cache_drop_count"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->f:Lccsancom/applovin/impl/sdk/d/f;

    const-string/jumbo v0, "sdk_reset_state_count"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->g:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "ad_response_process_failures"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->h:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "response_process_failures"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->i:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "incent_failed_to_display_count"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->j:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "app_paused_and_resumed"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->k:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "ad_rendered_with_mismatched_sdk_key"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->l:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "ad_shown_outside_app_count"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->m:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "med_ad_req"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->n:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "med_ad_response_process_failures"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->o:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "med_adapters_failed_init_missing_activity"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->p:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_no_fill"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->q:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_adapter_load_failed"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->r:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_invalid_response"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/d/f;->s:Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "fullscreen_ad_nil_vc_count"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    const-string v0, "applovin_bundle_missing"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d/f;->u:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/f;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Lccsancom/applovin/impl/sdk/d/f;
    .locals 2

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lccsancom/applovin/impl/sdk/d/f;->t:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lccsancom/applovin/impl/sdk/d/f;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/d/f;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p0, Lccsancom/applovin/impl/sdk/d/f;->v:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key has already been used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key name specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/applovin/impl/sdk/d/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lccsancom/applovin/impl/sdk/d/f;->v:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/f;->u:Ljava/lang/String;

    return-object v0
.end method
