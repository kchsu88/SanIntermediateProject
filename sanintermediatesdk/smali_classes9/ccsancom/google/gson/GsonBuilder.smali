.class public final Lccsancom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lccsancom/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lccsancom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lccsancom/google/gson/internal/Excluder;->DEFAULT:Lccsancom/google/gson/internal/Excluder;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 80
    sget-object v0, Lccsancom/google/gson/LongSerializationPolicy;->DEFAULT:Lccsancom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lccsancom/google/gson/FieldNamingPolicy;->IDENTITY:Lccsancom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    .line 90
    iput v1, p0, Lccsancom/google/gson/GsonBuilder;->timeStyle:I

    .line 91
    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 92
    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 94
    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 95
    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 96
    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->lenient:Z

    .line 105
    return-void
.end method

.method constructor <init>(Lccsancom/google/gson/Gson;)V
    .locals 5
    .param p1, "gson"    # Lccsancom/google/gson/Gson;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lccsancom/google/gson/internal/Excluder;->DEFAULT:Lccsancom/google/gson/internal/Excluder;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 80
    sget-object v0, Lccsancom/google/gson/LongSerializationPolicy;->DEFAULT:Lccsancom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lccsancom/google/gson/FieldNamingPolicy;->IDENTITY:Lccsancom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lccsancom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lccsancom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 89
    const/4 v4, 0x2

    iput v4, p0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    .line 90
    iput v4, p0, Lccsancom/google/gson/GsonBuilder;->timeStyle:I

    .line 91
    iput-boolean v3, p0, Lccsancom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 92
    iput-boolean v3, p0, Lccsancom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 93
    const/4 v4, 0x1

    iput-boolean v4, p0, Lccsancom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 94
    iput-boolean v3, p0, Lccsancom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 95
    iput-boolean v3, p0, Lccsancom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 96
    iput-boolean v3, p0, Lccsancom/google/gson/GsonBuilder;->lenient:Z

    .line 114
    iget-object v3, p1, Lccsancom/google/gson/Gson;->excluder:Lccsancom/google/gson/internal/Excluder;

    iput-object v3, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 115
    iget-object v3, p1, Lccsancom/google/gson/Gson;->fieldNamingStrategy:Lccsancom/google/gson/FieldNamingStrategy;

    iput-object v3, p0, Lccsancom/google/gson/GsonBuilder;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    .line 116
    iget-object v3, p1, Lccsancom/google/gson/Gson;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->serializeNulls:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 118
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 119
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 120
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->htmlSafe:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 121
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->prettyPrinting:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 122
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->lenient:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->lenient:Z

    .line 123
    iget-boolean v0, p1, Lccsancom/google/gson/Gson;->serializeSpecialFloatingPointValues:Z

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 124
    iget-object v0, p1, Lccsancom/google/gson/Gson;->longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

    .line 125
    iget-object v0, p1, Lccsancom/google/gson/Gson;->datePattern:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 126
    iget v0, p1, Lccsancom/google/gson/Gson;->dateStyle:I

    iput v0, p0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    .line 127
    iget v0, p1, Lccsancom/google/gson/Gson;->timeStyle:I

    iput v0, p0, Lccsancom/google/gson/GsonBuilder;->timeStyle:I

    .line 128
    iget-object v0, p1, Lccsancom/google/gson/Gson;->builderFactories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p1, Lccsancom/google/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lccsancom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .line 611
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/gson/TypeAdapterFactory;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lccsancom/google/gson/DefaultDateTypeAdapter;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1, p1}, Lccsancom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 613
    .local v0, "dateTypeAdapter":Lccsancom/google/gson/DefaultDateTypeAdapter;
    new-instance v1, Lccsancom/google/gson/DefaultDateTypeAdapter;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v1, v2, p1}, Lccsancom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 614
    .local v1, "timestampTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v2, Lccsancom/google/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, p1}, Lccsancom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .local v2, "javaSqlDateTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    goto :goto_0

    .line 615
    .end local v0    # "dateTypeAdapter":Lccsancom/google/gson/DefaultDateTypeAdapter;
    .end local v1    # "timestampTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    .end local v2    # "javaSqlDateTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    .line 616
    new-instance v0, Lccsancom/google/gson/DefaultDateTypeAdapter;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1, p2, p3}, Lccsancom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 617
    .restart local v0    # "dateTypeAdapter":Lccsancom/google/gson/DefaultDateTypeAdapter;
    new-instance v1, Lccsancom/google/gson/DefaultDateTypeAdapter;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v1, v2, p2, p3}, Lccsancom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 618
    .restart local v1    # "timestampTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v2, Lccsancom/google/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3, p2, p3}, Lccsancom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 623
    .restart local v2    # "javaSqlDateTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :goto_0
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v0}, Lccsancom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    const-class v3, Ljava/sql/Timestamp;

    invoke-static {v3, v1}, Lccsancom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-class v3, Ljava/sql/Date;

    invoke-static {v3, v2}, Lccsancom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    return-void

    .line 620
    .end local v0    # "dateTypeAdapter":Lccsancom/google/gson/DefaultDateTypeAdapter;
    .end local v1    # "timestampTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    .end local v2    # "javaSqlDateTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lccsancom/google/gson/ExclusionStrategy;)Lccsancom/google/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lccsancom/google/gson/ExclusionStrategy;

    .line 375
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/google/gson/internal/Excluder;->withExclusionStrategy(Lccsancom/google/gson/ExclusionStrategy;ZZ)Lccsancom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 376
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lccsancom/google/gson/ExclusionStrategy;)Lccsancom/google/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lccsancom/google/gson/ExclusionStrategy;

    .line 358
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/google/gson/internal/Excluder;->withExclusionStrategy(Lccsancom/google/gson/ExclusionStrategy;ZZ)Lccsancom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 359
    return-object p0
.end method

.method public create()Lccsancom/google/gson/Gson;
    .locals 23

    .line 587
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lccsancom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/gson/TypeAdapterFactory;>;"
    move-object/from16 v20, v1

    .line 588
    iget-object v2, v0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lccsancom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    .local v2, "hierarchyFactories":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/gson/TypeAdapterFactory;>;"
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 593
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    iget-object v3, v0, Lccsancom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v4, v0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    iget v5, v0, Lccsancom/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {v0, v3, v4, v5, v1}, Lccsancom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 597
    new-instance v21, Lccsancom/google/gson/Gson;

    move-object/from16 v3, v21

    iget-object v4, v0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    iget-object v5, v0, Lccsancom/google/gson/GsonBuilder;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    iget-object v6, v0, Lccsancom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v7, v0, Lccsancom/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v8, v0, Lccsancom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v9, v0, Lccsancom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v10, v0, Lccsancom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v11, v0, Lccsancom/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v12, v0, Lccsancom/google/gson/GsonBuilder;->lenient:Z

    iget-boolean v13, v0, Lccsancom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v14, v0, Lccsancom/google/gson/GsonBuilder;->longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

    iget-object v15, v0, Lccsancom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v22, v1

    .end local v1    # "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/gson/TypeAdapterFactory;>;"
    .local v22, "factories":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/gson/TypeAdapterFactory;>;"
    iget v1, v0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/google/gson/GsonBuilder;->timeStyle:I

    move/from16 v17, v1

    iget-object v1, v0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lccsancom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    move-object/from16 v19, v1

    invoke-direct/range {v3 .. v20}, Lccsancom/google/gson/Gson;-><init>(Lccsancom/google/gson/internal/Excluder;Lccsancom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLccsancom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v21
.end method

.method public disableHtmlEscaping()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 412
    return-object p0
.end method

.method public disableInnerClassSerialization()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 285
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lccsancom/google/gson/internal/Excluder;->disableInnerClassSerialization()Lccsancom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 286
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 275
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lccsancom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "modifiers"    # [I

    .line 156
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/Excluder;->withModifiers([I)Lccsancom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 157
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 181
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lccsancom/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lccsancom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 182
    return-object p0
.end method

.method public generateNonExecutableJson()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 171
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lccsancom/google/gson/GsonBuilder;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "typeAdapter"    # Ljava/lang/Object;

    .line 497
    instance-of v0, p2, Lccsancom/google/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lccsancom/google/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lccsancom/google/gson/InstanceCreator;

    if-nez v0, :cond_1

    instance-of v0, p2, Lccsancom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lccsancom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 501
    instance-of v0, p2, Lccsancom/google/gson/InstanceCreator;

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lccsancom/google/gson/InstanceCreator;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_2
    instance-of v0, p2, Lccsancom/google/gson/JsonSerializer;

    if-nez v0, :cond_3

    instance-of v0, p2, Lccsancom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_4

    .line 505
    :cond_3
    invoke-static {p1}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 506
    .local v0, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lccsancom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v0    # "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    :cond_4
    instance-of v0, p2, Lccsancom/google/gson/TypeAdapter;

    if-eqz v0, :cond_5

    .line 509
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lccsancom/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lccsancom/google/gson/internal/bind/TypeAdapters;->newFactory(Lccsancom/google/gson/reflect/TypeToken;Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_5
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lccsancom/google/gson/TypeAdapterFactory;)Lccsancom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "factory"    # Lccsancom/google/gson/TypeAdapterFactory;

    .line 523
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lccsancom/google/gson/GsonBuilder;
    .locals 2
    .param p2, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/gson/GsonBuilder;"
        }
    .end annotation

    .line 543
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p2, Lccsancom/google/gson/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lccsancom/google/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lccsancom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lccsancom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 546
    instance-of v0, p2, Lccsancom/google/gson/JsonDeserializer;

    if-nez v0, :cond_2

    instance-of v0, p2, Lccsancom/google/gson/JsonSerializer;

    if-eqz v0, :cond_3

    .line 547
    :cond_2
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lccsancom/google/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_3
    instance-of v0, p2, Lccsancom/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    .line 550
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Lccsancom/google/gson/TypeAdapter;

    invoke-static {p1, v1}, Lccsancom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lccsancom/google/gson/TypeAdapter;)Lccsancom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 194
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 577
    return-object p0
.end method

.method public setDateFormat(I)Lccsancom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "style"    # I

    .line 452
    iput p1, p0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 454
    return-object p0
.end method

.method public setDateFormat(II)Lccsancom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .line 473
    iput p1, p0, Lccsancom/google/gson/GsonBuilder;->dateStyle:I

    .line 474
    iput p2, p0, Lccsancom/google/gson/GsonBuilder;->timeStyle:I

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 476
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lccsancom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 433
    iput-object p1, p0, Lccsancom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lccsancom/google/gson/ExclusionStrategy;)Lccsancom/google/gson/GsonBuilder;
    .locals 5
    .param p1, "strategies"    # [Lccsancom/google/gson/ExclusionStrategy;

    .line 339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 340
    .local v2, "strategy":Lccsancom/google/gson/ExclusionStrategy;
    iget-object v3, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lccsancom/google/gson/internal/Excluder;->withExclusionStrategy(Lccsancom/google/gson/ExclusionStrategy;ZZ)Lccsancom/google/gson/internal/Excluder;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 339
    .end local v2    # "strategy":Lccsancom/google/gson/ExclusionStrategy;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lccsancom/google/gson/FieldNamingPolicy;)Lccsancom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "namingConvention"    # Lccsancom/google/gson/FieldNamingPolicy;

    .line 311
    iput-object p1, p0, Lccsancom/google/gson/GsonBuilder;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    .line 312
    return-object p0
.end method

.method public setFieldNamingStrategy(Lccsancom/google/gson/FieldNamingStrategy;)Lccsancom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "fieldNamingStrategy"    # Lccsancom/google/gson/FieldNamingStrategy;

    .line 324
    iput-object p1, p0, Lccsancom/google/gson/GsonBuilder;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    .line 325
    return-object p0
.end method

.method public setLenient()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->lenient:Z

    .line 400
    return-object p0
.end method

.method public setLongSerializationPolicy(Lccsancom/google/gson/LongSerializationPolicy;)Lccsancom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "serializationPolicy"    # Lccsancom/google/gson/LongSerializationPolicy;

    .line 298
    iput-object p1, p0, Lccsancom/google/gson/GsonBuilder;->longSerializationPolicy:Lccsancom/google/gson/LongSerializationPolicy;

    .line 299
    return-object p0
.end method

.method public setPrettyPrinting()Lccsancom/google/gson/GsonBuilder;
    .locals 1

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 387
    return-object p0
.end method

.method public setVersion(D)Lccsancom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .line 140
    iget-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/gson/internal/Excluder;->withVersion(D)Lccsancom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/GsonBuilder;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 141
    return-object p0
.end method
