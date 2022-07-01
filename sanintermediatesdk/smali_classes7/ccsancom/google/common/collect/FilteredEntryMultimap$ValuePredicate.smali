.class final Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lccsancom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Predicate<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/FilteredEntryMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;, "Lccsancom/google/common/collect/FilteredEntryMultimap<TK;TV;>.ValuePredicate;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 82
    .local p0, "this":Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;, "Lccsancom/google/common/collect/FilteredEntryMultimap<TK;TV;>.ValuePredicate;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->this$0:Lccsancom/google/common/collect/FilteredEntryMultimap;

    iget-object v1, p0, Lccsancom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lccsancom/google/common/collect/FilteredEntryMultimap;->access$000(Lccsancom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
