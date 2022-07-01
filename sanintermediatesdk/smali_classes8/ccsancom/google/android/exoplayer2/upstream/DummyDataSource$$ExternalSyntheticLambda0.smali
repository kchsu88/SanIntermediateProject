.class public final synthetic Lccsancom/google/android/exoplayer2/upstream/DummyDataSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource$Factory;


# static fields
.field public static final synthetic INSTANCE:Lccsancom/google/android/exoplayer2/upstream/DummyDataSource$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/DummyDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/upstream/DummyDataSource$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/upstream/DummyDataSource$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/upstream/DummyDataSource$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    invoke-static {}, Lccsancom/google/android/exoplayer2/upstream/DummyDataSource;->$r8$lambda$9BpKLyGsZEvVQGK2JL1PVuvhcCc()Lccsancom/google/android/exoplayer2/upstream/DummyDataSource;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method
