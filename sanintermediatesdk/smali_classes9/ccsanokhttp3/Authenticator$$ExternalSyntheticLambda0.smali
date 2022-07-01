.class public final synthetic Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsanokhttp3/Authenticator;


# static fields
.field public static final synthetic INSTANCE:Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;->INSTANCE:Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(Lccsanokhttp3/Route;Lccsanokhttp3/Response;)Lccsanokhttp3/Request;
    .locals 0

    invoke-static {p1, p2}, Lccsanokhttp3/Authenticator$-CC;->lambda$static$0(Lccsanokhttp3/Route;Lccsanokhttp3/Response;)Lccsanokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
