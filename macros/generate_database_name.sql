{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- if custom_database_name is none -%}
        {%- if target.name == 'QA' -%}

            {{ default_database }}_QA

        {%- else -%}

            {{ default_database }}

        {%- endif -%}



    {%- else -%}

        {%- if target.name == 'QA' -%}

            {{ custom_database_name | trim }}_QA

        {%- else -%}

            {{ custom_database_name | trim }}

        {%- endif -%}

        

    {%- endif -%}

{%- endmacro %}