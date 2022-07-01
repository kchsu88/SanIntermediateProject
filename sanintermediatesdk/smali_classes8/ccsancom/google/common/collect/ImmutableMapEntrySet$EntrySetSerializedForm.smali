.class Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMapEntrySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;->map:Lccsancom/google/common/collect/ImmutableMap;

    .line 116
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 119
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
