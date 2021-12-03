{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- if ((custom_database_name is none) AND (target.name <> 'QA')) -%}

        {{ default_database }}

    {%- elif ((target.name == 'QA') AND (custom_database_name is none)) -%}

        {{ default_database }}_QA

    {%- elif ((target.name == 'QA') AND (custom_database_name is NOT none)) -%}

        {{ custom_database_name | trim }}_QA    

    {%- else -%}

        {{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}