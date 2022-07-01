.class public abstract Lccsanandroidx/work/WorkRequest;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/WorkRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKOFF_DELAY_MILLIS:J = 0x7530L

.field public static final MAX_BACKOFF_MILLIS:J = 0x112a880L

.field public static final MIN_BACKOFF_MILLIS:J = 0x2710L


# instance fields
.field private mId:Ljava/util/UUID;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;


# direct methods
.method protected constructor <init>(Ljava/util/UUID;Lccsanandroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V
    .locals 0
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p3, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lccsanandroidx/work/WorkRequest;->mId:Ljava/util/UUID;

    .line 63
    iput-object p2, p0, Lccsanandroidx/work/WorkRequest;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    .line 64
    iput-object p3, p0, Lccsanandroidx/work/WorkRequest;->mTags:Ljava/util/Set;

    .line 65
    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .line 73
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public getWorkSpec()Lccsanandroidx/work/impl/model/WorkSpec;
    .locals 1

    .line 95
    iget-object v0, p0, Lccsanandroidx/work/WorkRequest;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    return-object v0
.end method
