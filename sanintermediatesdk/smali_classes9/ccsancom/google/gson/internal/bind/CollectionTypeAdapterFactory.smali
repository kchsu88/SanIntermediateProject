.class public final Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lccsancom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lccsancom/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lccsancom/google/gson/internal/ConstructorConstructor;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;

    .line 41
    return-void
.end method


# virtual methods
.method public create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
    .locals 6
    .param p1, "gson"    # Lccsancom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p2, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    .local v0, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v2, 0x0

    return-object v2

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lccsancom/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 53
    .local v2, "elementType":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p1, v3}, Lccsancom/google/gson/Gson;->getAdapter(Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v3

    .line 54
    .local v3, "elementTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<*>;"
    iget-object v4, p0, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v4, p2}, Lccsancom/google/gson/internal/ConstructorConstructor;->get(Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/internal/ObjectConstructor;

    move-result-object v4

    .line 57
    .local v4, "constructor":Lccsancom/google/gson/internal/ObjectConstructor;, "Lccsancom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v5, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v5, p1, v2, v3, v4}, Lccsancom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lccsancom/google/gson/Gson;Ljava/lang/reflect/Type;Lccsancom/google/gson/TypeAdapter;Lccsancom/google/gson/internal/ObjectConstructor;)V

    .line 58
    .local v5, "result":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<TT;>;"
    return-object v5
.end method
