.class public Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;
.super Ljava/lang/Object;
.source "EmptyDataLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_DATA_LOAD_PROVIDER:Lccsancom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;

    invoke-direct {v0}, Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;->EMPTY_DATA_LOAD_PROVIDER:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    .local p0, "this":Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lccsancom/bumptech/glide/provider/DataLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 20
    sget-object v0, Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;->EMPTY_DATA_LOAD_PROVIDER:Lccsancom/bumptech/glide/provider/DataLoadProvider;

    return-object v0
.end method


# virtual methods
.method public getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;, "Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider<TT;TZ;>;"
    const/4 v0, 0x0

    return-object v0
.end method
