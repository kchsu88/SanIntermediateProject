.class final Lccsancom/google/common/collect/Maps$9;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lccsancom/google/common/collect/Maps$EntryTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Maps;->asEntryTransformer(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Maps$EntryTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/Maps$EntryTransformer<",
        "TK;TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lccsancom/google/common/base/Function;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Function;)V
    .locals 0

    .line 1819
    iput-object p1, p0, Lccsancom/google/common/collect/Maps$9;->val$function:Lccsancom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;)TV2;"
        }
    .end annotation

    .line 1822
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV1;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$9;->val$function:Lccsancom/google/common/base/Function;

    invoke-interface {v0, p2}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
